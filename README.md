# SQL Case Study - Customer Analytics

![SQL Case Study - Customer Analytics](https://github.com/Sooryaks237/Sooryaks237.github.io/blob/main/assets/img/portfolio/sql-case-study-customer-analytics.png)

Build a relational schema for a company and answer business questions using SQL—covering DDL, DML, constraints, joins, aggregations, windowed logic (where applicable), and data quality handling.

---

## 🧱 Schema (MySQL)
- **offices**(officeCode PK, office_city, phone, address…, country, postalCode, territory)  
- **employees**(employeeNumber PK, …, officeCode FK→offices, reportsTo, jobTitle)  
- **customers**(customerNumber PK, …, salesRepEmployeeNumber FK→employees, creditLimit)  
- **orders**(orderNumber PK, orderDate, requiredDate, shippedDate, status, comments, customerNumber FK→customers)  
- **orderdetails**(orderNumber+productCode PK, quantityOrdered, priceEach, orderLineNumber)  
- **payments**(customerNumber+checkNumber PK, paymentDate, amount)  
- **productlines**(productLine PK, textDescription)  
- **products**(productCode PK, …, productLine FK→productlines)

> Notes:
> - Some numeric facts were stored as `varchar` (e.g., `quantityInStock`, `quantityOrdered`) and were normalized via `ALTER TABLE`.
> - `SET FOREIGN_KEY_CHECKS=0` used during bulk loads to avoid load-time FK errors.

---

## 🧰 Stack & Practices
- **MySQL** (DDL, DML, constraints, FKs)
- **Data cleaning:** type fixes (`ALTER TABLE … MODIFY`), controlled deletes
- **Query styles:** joins (inner/outer), subqueries, grouping, ordering, limiting
- **Governance:** sample data loads, constraint-aware updates, selective deletes

---

## 🔧 Key Operations Performed
- **Data loads:** `INSERT` into all dimension & fact tables (offices, employees, customers, orders, orderdetails, payments, productlines, products).  
- **Type normalization:**  
  ```sql
  ALTER TABLE orderdetails MODIFY COLUMN quantityOrdered INT;
## Files

- `01_schema.sql` — schema (DDL): database creation and table definitions
- `02_seed.sql` — data (DML): insert statements for populating tables

## Quick start (MySQL/MariaDB)

```bash
# 1) Create schema & tables
mysql -u <user> -p < 01_schema.sql

# 2) Load data
mysql -u <user> -p < 02_seed.sql
```

> Ensure that MySQL/MariaDB server is running before executing the scripts.

## GitHub: add & push

```bash
git init
git add 01_schema.sql 02_seed.sql README.md
git commit -m "Add SQL Case Study - Customer Analytics schema and data"
git branch -M main
git remote add origin https://github.com/<your-user>/<your-repo>.git
git push -u origin main
```
