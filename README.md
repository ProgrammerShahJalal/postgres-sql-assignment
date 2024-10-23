# Postgres SQL Assignment

## 1. Explain the primary key and foreign key concepts in PostgreSQL.

### Primary Key:

A column (or several columns) that uniquely identifies each row in a table. It ensures that no two rows can have the same value and that the value is always present (cannot be empty).

### Foreign Key:

A column that creates a link between two tables. It refers to the primary key in another table, ensuring that the data between the two tables is related correctly.

Example:

```sql
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(id)
);
```
