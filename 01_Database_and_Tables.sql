-- ==============================================================================
-- PROJECT : Urbanmart Retail Analysis Project
-- FILE    : 01_database_and_tables.sql
-- PURPOSE : Build a normalized two-table MySQL 8.0 insurance analytics schema.
-- ==============================================================================

-- 1.Database creation
DROP DATABASE IF EXISTS urbanmart_retail;
CREATE DATABASE Urbanmart_Retail;
USE urbanmart_retail;

-- 2.Table creation
-- A. Products.
CREATE TABLE products(
    product_id    VARCHAR(10),
    product_name    VARCHAR(100),
    category    VARCHAR(50),
    brand    VARCHAR(50),
    cost_price    DECIMAL(10,2),
    selling_price    DECIMAL(10,2),
    stock_quantity    INT,
    reorder_level    INT,
    supplier_city    VARCHAR(50)
);

-- B.Sales_transaction. 
CREATE TABLE sales_transaction(
    transaction_id    VARCHAR(10),
    sale_date    DATE,
    customer_id    VARCHAR(10),
    customer_name    VARCHAR(100),
    customer_city    VARCHAR(50),
    product_id    VARCHAR(10),
    store_city    VARCHAR(50),
    store_location    VARCHAR(50),
    quantity    INT,
    unit_price    DECIMAL(10,2),
    discount_pct    INT,
    discount_amount    DECIMAL(10,2),
    net_amount    DECIMAL(10,2),
    payment_mode    VARCHAR(20)
    );

-- 3.Helpful indexes for the analysis tasks
CREATE INDEX idx_sales_date ON sales_transaction(sale_date);
CREATE INDEX idx_sales_customer ON sales_transaction(customer_id);
CREATE INDEX idx_sales_store ON sales_transaction(store_city);

-- 4.BACKUP FILES FOR TABLES
CREATE TABLE backup_products LIKE products;
SELECT * INTO BACKUP_PRODUCTS
FROM products;

CREATE TABLE backup_sales_transaction
SELECT * FROM SALES_TRANSACTION;





















