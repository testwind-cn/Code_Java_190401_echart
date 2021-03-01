SELECT dim_v.date_v as data_dt, data_v.data_00, data_v.data_01, data_v.data_02
FROM (
         SELECT date_v
         FROM dim_date
         WHERE date_v >=
               DATE_SUB(DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH), INTERVAL (DAY(CURRENT_DATE) - 1) day)
           AND date_v <= DATE_SUB(CURRENT_DATE, INTERVAL 0 DAY) -- 2019-05-01
         ORDER BY date_v
     ) dim_v
         LEFT JOIN (
    select data_dt,
           `in_hushu_5`                   as data_00,
           `bank_approved_pass_hushu_5` as data_01,
           `pass_rate_5` * 100          as data_02
    from `viz_tlb_daily_by_date`
    WHERE data_dt >=
          DATE_SUB(DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH), INTERVAL (DAY(CURRENT_DATE) - 1) day)
      AND data_dt <= DATE_SUB(CURRENT_DATE, INTERVAL 0 DAY)
    order by data_dt
) data_v
                   on dim_v.date_v = data_v.data_dt
order by date_v;

