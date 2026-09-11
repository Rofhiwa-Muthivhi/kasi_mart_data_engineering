-- This script demonstrates how the CSV files were loaded into the corresponding snowflake tables.

-- Load Customers

COPY INTO "DE_PROJECT_01"."KASI_MART"."CUSTOMERS"
FROM (SELECT $1, $2, $3, $4, $5 from '@"DE_PROJECT_01"."KASI_MART"."__snowflake_temp_import_files__"')
FILES = ('2026-09-11T14:26:26.333Z/customers.csv') FILE_FORMAT = '"DE_PROJECT_01"."KASI_MART"."temp_file_format_2026-09-11T14:27:44.907Z"' ON_ERROR=ABORT_STATEMENT


-- Load Orders

COPY INTO "DE_PROJECT_01"."KASI_MART"."ORDERS"
FROM (SELECT $1, $2, $3, $4, $5 from '@"DE_PROJECT_01"."KASI_MART"."__snowflake_temp_import_files__"')
FILES = ('2026-09-11T14:47:05.893Z/orders.csv') FILE_FORMAT = '"DE_PROJECT_01"."KASI_MART"."temp_file_format_2026-09-11T14:47:16.576Z"' ON_ERROR=ABORT_STATEMENT


-- Load Products

COPY INTO "DE_PROJECT_01"."KASI_MART"."PRODUCTS"
FROM (SELECT $1, $2, $3, $4 from '@"DE_PROJECT_01"."KASI_MART"."__snowflake_temp_import_files__"')
FILES = ('2026-09-11T14:48:31.427Z/products.csv') FILE_FORMAT = '"DE_PROJECT_01"."KASI_MART"."temp_file_format_2026-09-11T14:48:38.541Z"' ON_ERROR=ABORT_STATEMENT
