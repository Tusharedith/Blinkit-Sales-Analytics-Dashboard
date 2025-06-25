CREATE DATABASE IF NOT EXISTS blinkit;
USE blinkit;

-- Table schema for BlinkitSales
CREATE TABLE IF NOT EXISTS BlinkitSales (
  Item_Fat_Content VARCHAR(20),
  Item_Identifier VARCHAR(20),
  Item_Type VARCHAR(50),
  Outlet_Establishment_Year INT,
  Outlet_Identifier VARCHAR(20),
  Outlet_Location_Type VARCHAR(20),
  Outlet_Size VARCHAR(20),
  Outlet_Type VARCHAR(30),
  Item_Visibility FLOAT,
  Item_Weight FLOAT,
  Sales FLOAT,
  Rating INT
);

