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
---

## Files

- `01_schema.sql` — schema (DDL): database creation and table definitions
- `02_seed.sql` — data (DML): insert statements for populating tables

---

## ✅ Data Quality Fixes
- Mixed data types for numeric fields → converted to INT.
- Date consistency: shippedDate stored as text → should be DATE.
- Text “NULL” replaced with real NULL.

---

## 📈 Business Outcomes
- Quick answers to who/where/what questions (top countries, vendors, shipment status).
- Risk & exposure visibility (credit limits by region/rep).
- Finance insights (peak payment month, customer-level payments).
- Operational readiness (remaining stock after orders).

---

## 🚀 Future Enhancements
- Add indexes on frequently queried columns.
- Convert all date-like text to DATE/DATETIME.
- Create reusable views (vw_customer_payments, vw_unshipped_orders).
- Add CHECK constraints for positive numeric values.

---
## 📫 Connect with Me  
- [LinkedIn](https://www.linkedin.com/in/soorya-k-s-/)  
- 📧 Email: **sooryaks552@gmail.com*
⭐️ From [Sooryaks237](https://github.com/Sooryaks237)
---
