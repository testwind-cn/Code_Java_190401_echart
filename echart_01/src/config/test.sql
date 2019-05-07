SELECT `un_data1`.`date_v`                                                                   AS `tgroup`,
       (sum(`un_data1`.`c01`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(全部结清-笔数) / 10`,
       (sum(`un_data1`.`c02`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(全部结清-原始贷款本金) / 10`,
       (sum(`un_data1`.`c06`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(全部未结清-笔数) / 10`,
       (sum(`un_data1`.`c07`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(全部未结清-原始贷款本金) / 10`,
       (sum(`un_data1`.`c08`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期30天+-笔数) / 10`,
       (sum(`un_data1`.`c09`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期30天+原始贷款本金) / 10`,
       (sum(`un_data1`.`c10`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期30天+贷款余额.本金) / 10`,
       (sum(`un_data1`.`c11`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期90天+-笔数) / 10`,
       (sum(`un_data1`.`c12`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期90天+原始贷款本金) / 10`,
       (sum(`un_data1`.`c13`) / f_get_ma_len(`un_data1`.`date_v`, '2015-08-03', 14, 10.0)) AS `sum(逾期90天+贷款余额.本金) / 10`
FROM (
         SELECT `dim_table`.`date_v` AS `date_v`,
                `data_table`.`c01`   AS `c01`,
                `data_table`.`c02`   AS `c02`,
                `data_table`.`c06`   AS `c06`,
                `data_table`.`c07`   AS `c07`,
                `data_table`.`c08`   AS `c08`,
                `data_table`.`c09`   AS `c09`,
                `data_table`.`c10`   AS `c10`,
                `data_table`.`c11`   AS `c11`,
                `data_table`.`c12`   AS `c12`,
                `data_table`.`c13`   AS `c13`
         FROM (
               (
                   SELECT `dim_date_14_e`.`date_v` AS `date_v`
                   FROM `echart`.`dim_date_14_e`
                   WHERE ((`dim_date_14_e`.`date_v` >= str_to_date('2015-08-03', '%Y-%m-%d '))
                       AND (`dim_date_14_e`.`date_v` <= str_to_date('2019-05-01', '%Y-%m-%d')))
                   ORDER BY `dim_date_14_e`.`date_v`
               ) `dim_table`
                  LEFT JOIN (
             SELECT `v_group_14_e`.`tgroup` AS `tgroup`,
                    `v_group_14_e`.`c01`    AS `c01`,
                    `v_group_14_e`.`c02`    AS `c02`,
                    `v_group_14_e`.`c06`    AS `c06`,
                    `v_group_14_e`.`c07`    AS `c07`,
                    `v_group_14_e`.`c08`    AS `c08`,
                    `v_group_14_e`.`c09`    AS `c09`,
                    `v_group_14_e`.`c10`    AS `c10`,
                    `v_group_14_e`.`c11`    AS `c11`,
                    `v_group_14_e`.`c12`    AS `c12`,
                    `v_group_14_e`.`c13`    AS `c13`
             FROM `echart`.`v_group_14_e`
             ORDER BY `v_group_14_e`.`tgroup`
         ) `data_table` ON (`f_date_ck_e`(`dim_table`.`date_v`, `data_table`.`tgroup`, 14, 10)) )
     )
         `un_data1`
GROUP BY `un_data1`.`date_v`
ORDER BY `un_data1`.`date_v`