SELECT bb.date_v, ccc.*
FROM (
         SELECT date_v
         FROM dim_date
         WHERE
                 date_v >= STR_TO_DATE('$DATE_START', '%Y-%m-%d')    -- 2019-03-12
           AND date_v <= STR_TO_DATE('$DATE_END', '%Y-%m-%d')    -- 2019-05-01
--              date_v >= STR_TO_DATE('2019-03-12', '%Y-%m-%d')    -- 2019-03-12
--          AND date_v <= STR_TO_DATE('2019-05-01', '%Y-%m-%d')    -- 2019-05-01
         ORDER BY date_v
     ) AS bb
         LEFT JOIN (
    SELECT data_dt,
           sum(in_hushu)                                                        AS in_hushu_0,
           sum(IF(STRCMP(prod_name, '富宝贷') = 0, in_hushu, 0))                   AS in_hushu_1,
           sum(IF(prod_name like '张家口%', in_hushu, 0))               AS in_hushu_2,
           sum(IF(STRCMP(prod_name, '好享贷') = 0, in_hushu, 0))                   AS in_hushu_3,
           sum(IF(STRCMP(prod_name, '我来贷') = 0, in_hushu, 0))                   AS in_hushu_4,
           sum(IF(STRCMP(prod_name, '甘肃银行-通联宝商贷e') = 0, in_hushu, 0))           AS in_hushu_5,
           sum(credit_hushu)                                                    AS credit_hushu_0,
           sum(IF(STRCMP(prod_name, '富宝贷') = 0, credit_hushu, 0))               AS credit_hushu_1,
           sum(IF(prod_name like '张家口%', credit_hushu, 0))           AS credit_hushu_2,
           sum(IF(STRCMP(prod_name, '好享贷') = 0, credit_hushu, 0))               AS credit_hushu_3,
           sum(IF(STRCMP(prod_name, '我来贷') = 0, credit_hushu, 0))               AS credit_hushu_4,
           sum(IF(STRCMP(prod_name, '甘肃银行-通联宝商贷e') = 0, credit_hushu, 0))       AS credit_hushu_5,
           sum(credit_amount)                                                   AS credit_amount_0,
           sum(IF(STRCMP(prod_name, '富宝贷') = 0, credit_amount, 0))              AS credit_amount_1,
           sum(IF(prod_name like '张家口%', credit_amount, 0))          AS credit_amount_2,
           sum(IF(STRCMP(prod_name, '好享贷') = 0, credit_amount, 0))              AS credit_amount_3,
           sum(IF(STRCMP(prod_name, '我来贷') = 0, credit_amount, 0))              AS credit_amount_4,
           sum(IF(STRCMP(prod_name, '甘肃银行-通联宝商贷e') = 0, credit_amount, 0))      AS credit_amount_5,
           sum(use_success_amount)                                              AS use_success_amount_0,
           sum(IF(STRCMP(prod_name, '富宝贷') = 0, use_success_amount, 0))         AS use_success_amount_1,
           sum(IF(prod_name like '张家口%', use_success_amount, 0))     AS use_success_amount_2,
           sum(IF(STRCMP(prod_name, '好享贷') = 0, use_success_amount, 0))         AS use_success_amount_3,
           sum(IF(STRCMP(prod_name, '我来贷') = 0, use_success_amount, 0))         AS use_success_amount_4,
           sum(IF(STRCMP(prod_name, '甘肃银行-通联宝商贷e') = 0, use_success_amount, 0)) AS use_success_amount_5

    FROM viz_tlb_daily_by_branch
    GROUP BY data_dt
) AS ccc ON bb.date_v = ccc.data_dt
ORDER BY bb.date_v

-- viz_tlb_daily_by_branch.*
