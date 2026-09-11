## Data Inspection

Before loading the data into Snowflake, I inspected the three CSV files to understand what information they contain, how the tables relate to each other, and what data type should be assigned to each column.

The inspection helped me understand that the three datasets have different purposes. The Customers and Products tables are dimension tables, while the Orders table is the fact table containing the transactions.

Customers Table
| Column | Data Type | Description |
|---|---|---|
| customer_id | varchar | Uniquely identifies each customer. |
| customer_name | varchar  | The name of the customer. |
| email | varchar  | The customer's contact details. |
| province | varchar  | The customer's location by province. |
| signup_date | date  | The date when the customer first signed up to Kasi Mart. |

Products Table
| Column | Data Type | Description |
|---|---|---|
| product_id | varchar  | Uniquely identifies each product sold. |
| product_name | varchar  | The name of the product. |
| category | varchar  | The classification/category of the product. |
| unit_price | decimal | The price of one unit of the product.|


Orders Table
| Column | Data Type | Description |
|---|---|---|
| order_id | varchar  | Uniquely identifies each order/transaction. |
| customer_id | varchar  | Identifies the customer who placed the order. |
| product_id | varchar  | Identifies the product included in the order. |
| order_date | date | The date when the customer placed the order.|
| quantity | integer | The number of units of the product purchased in the order.|

#### What I Learned From Data Inspection

During the data inspection, I learned that understanding the data should come before building the database or writing queries.

I learned how to look at each column and understand what information it represents instead of treating all columns the same. I also learned that each column needs an appropriate data type before the data is loaded into Snowflake. For example, IDs can be stored as VARCHAR when they contain letters, dates should be stored as DATE, quantities should be stored as integers, and prices should use a decimal/numeric data type.

I also learned that the number of rows in a table does not always represent the number of unique customers or products. For example, the Orders table has 150 records, but one customer can place multiple orders.

Most importantly, I started understanding how the tables relate to each other. The customer_id connects Customers to Orders, while the product_id connects Products to Orders. This relationship will allow me to use joins later to bring information from the three tables together.