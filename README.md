# Company SQL Split

This repository splits the original monolithic SQL into:
- `01_schema.sql` — schema (DDL) only
- `02_seed.sql` — data inserts (DML) only

## Quick start (MySQL/MariaDB)

```bash
# 1) create schema & tables
mysql -u <user> -p < database_optional > < 01_schema.sql

# 2) load data
mysql -u <user> -p < database_optional > < 02_seed.sql
```

> If `01_schema.sql` already includes `CREATE DATABASE company;` and `USE company;` you can omit the `< database_optional >` part.

## GitHub: add & push

```bash
git init
git add 01_schema.sql 02_seed.sql README.md
git commit -m "Split monolith SQL into schema (DDL) and seed (DML)"
# Create a new repo first on GitHub, then:
git branch -M main
git remote add origin https://github.com/<your-user>/<your-repo>.git
git push -u origin main
```

> Original source file: `SQL_CaseStudy1.sql`
