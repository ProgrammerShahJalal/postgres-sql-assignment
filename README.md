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

## 4. What are the LIMIT and OFFSET clauses used for?

- **LIMIT**: Limits the number of rows returned in the result set.
- **OFFSET**: Skips a specified number of rows before starting to return results.
  Example:

```sql
SELECT * FROM products LIMIT 10 OFFSET 20;
```

## 5. How can you perform data modification using UPDATE statements?

The UPDATE statement is used to change data in a table. We can update specific columns for selected rows using a WHERE clause.

Example:

```sql
UPDATE products SET price = 150 WHERE id = 1;
```

## 6. What is the significance of the JOIN operation, and how does it work in PostgreSQL?

A JOIN combines rows from two or more tables based on a related column. It’s useful when we need to get data from multiple tables in one query.

Example:

```sql
SELECT customers.name, orders.order_id
FROM customers
JOIN orders ON customers.id = orders.customer_id;
```

## 7. Explain the GROUP BY clause and its role in aggregation operations.

The GROUP BY clause groups rows that have the same values in a specified column. It’s used with aggregate functions like SUM, COUNT, MAX, MIN, and AVG.

Example:

```sql
SELECT category, COUNT(*) FROM products GROUP BY category;
```

## 8. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?

Aggregate functions are used to perform calculations on sets of data. For example:

- COUNT(): Counts rows.
- SUM(): Adds up values.
- AVG(): Calculates the average.

Example:

```sql
SELECT COUNT(*), SUM(price), AVG(price) FROM products;
```

## 9. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?

An index is like a shortcut for searching data. It speeds up queries by allowing the database to quickly find rows instead of scanning the entire table.

## 10. Explain the concept of a PostgreSQL view and how it differs from a table.

A view is like a saved query. It looks like a table but doesn’t store data. It displays results from other tables and updates automatically when the underlying data changes.

Example:

```sql
CREATE VIEW active_customers AS
SELECT * FROM customers WHERE active = true;
```

## License

All rights reserved by **Md Shah Jalal**.
