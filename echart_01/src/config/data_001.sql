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
           `in_hushu_1`                   as data_00,
           `bank_approved_pass_hushu_1` as data_01,
           `pass_rate_1` * 100          as data_02
    from `viz_tlb_daily_by_date`
    WHERE data_dt >=
          DATE_SUB(DATE_SUB(CURRENT_DATE, INTERVAL 6 MONTH), INTERVAL (DAY(CURRENT_DATE) - 1) day)
      AND data_dt <= DATE_SUB(CURRENT_DATE, INTERVAL 0 DAY)
    order by data_dt
) data_v
                   on dim_v.date_v = data_v.data_dt
order by date_v;

-- SELECT bb.date_v, ccc.*
-- FROM (
--        SELECT date_v
--        FROM dim_date
--        WHERE
--             date_v >= STR_TO_DATE('$DATE_START', '%Y-%m-%d')    -- 2019-03-12
--         AND date_v <= STR_TO_DATE('$DATE_END', '%Y-%m-%d')    -- 2019-05-01
--              date_v >= STR_TO_DATE('2019-03-12', '%Y-%m-%d')    -- 2019-03-12
--          AND date_v <= STR_TO_DATE('2019-05-01', '%Y-%m-%d')    -- 2019-05-01
--        ORDER BY date_v
--      ) AS bb
--        LEFT JOIN (
--          SELECT register_date, cnt, accum_cnt from report_user_zc order by register_date
--          )
--          AS ccc
--        ON bb.date_v = ccc.register_date
-- ORDER BY bb.date_v

-- viz_tlb_daily_by_branch.*
