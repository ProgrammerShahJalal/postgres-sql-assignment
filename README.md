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

## 2. What is the difference between the VARCHAR and CHAR data types?

- **VARCHAR**: Stores variable-length character strings, optimizing storage for varying text lengths.
- **CHAR**: Stores fixed-length character strings, requiring a predefined maximum length. If the data is shorter, it fills in the extra space with blank spaces.

## 3. Explain the purpose of the WHERE clause in a SELECT statement.

The WHERE clause filters records when querying data. It allows us to get only the rows that meet a condition.

Example:

```sql
SELECT * FROM products WHERE price > 100;
```
