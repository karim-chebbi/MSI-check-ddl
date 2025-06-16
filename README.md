# SQL Relational Model: Customer Orders System

This project contains SQL scripts to create a basic relational database model with three tables: `Customer`, `Product`, and `Orders`.

## 🧱 Tables Structure

- **Customer**
  - `Customer_id` (Primary Key)
  - `Customer_Name`
  - `Customer_Tel`

- **Product**
  - `Product_id` (Primary Key)
  - `Product_Name`
  - `Price` (must be positive)
  - `Category` (added later)

- **Orders**
  - Composite Primary Key: `Customer_id`, `Product_id`
  - Foreign Keys: `Customer_id`, `Product_id`
  - `Quantity`
  - `Total_amount`
  - `OrderDate` (added later, defaults to `SYSDATE`)

## 📄 SQL Features Used

- Table creation with constraints
- Primary and foreign keys
- `CHECK` constraint for positive price
- `ALTER TABLE` to add columns
- Default date value with `SYSDATE`

## 🚀 How to Use

1. Run the `CREATE TABLE` statements.
2. Use the `ALTER TABLE` statements to add new columns.

---

Feel free to fork or use it as a base for similar relational database projects.
