-- This script demonstrates how to validate successful loading of each table.

SELECT
    (SELECT COUNT(*) FROM de_project_01.kasi_mart.customers) AS customer_count,
    (SELECT COUNT(*) FROM de_project_01.kasi_mart.products) AS product_count,
    (SELECT COUNT(*) FROM de_project_01.kasi_mart.orders) AS order_count;
