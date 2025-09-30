# SQL Case Study - Customer Analytics

This repository contains SQL scripts for setting up the database schema and populating it with data.

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
