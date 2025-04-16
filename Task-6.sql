SELECT * FROM task_6.sales;

SELECT
    YEAR(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')) AS order_year,
    MONTH(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')) AS order_month,
    SUM(`Revenue`) AS total_revenue,
    COUNT(DISTINCT `T_ID`) AS total_orders
FROM
    task_6.sales
GROUP BY
    YEAR(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y')),
    MONTH(STR_TO_DATE(TRIM(`Date`), '%d-%m-%Y'))
ORDER BY
    order_year,
    order_month;
