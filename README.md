# Postgres SQL Assignment

## 1. Explain the primary key and foreign key concepts in PostgreSQL.

### Primary Key:

- **Primary Key**: A unique identifier for each row in a table. It ensures that no two rows have the same value and that the value is always present.
- **Foreign Key**: Links two tables by referring to the primary key in another table. It ensures that the data is related and consistent.

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
