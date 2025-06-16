-- Create Customer table
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER
);

-- Create Product table
CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK (Price > 0)
);

-- Create Orders table
CREATE TABLE Orders (
    Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    Quantity NUMBER,
    Total_amount NUMBER,
    PRIMARY KEY (Customer_id, Product_id),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);

-- Add Category column to Product table
ALTER TABLE Product
ADD Category VARCHAR2(20);


-- Add OrderDate column with default SYSDATE
ALTER TABLE Orders
ADD OrderDate DATE DEFAULT SYSDATE;
