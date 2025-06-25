# 🛒 Blinkit Sales Analytics Dashboard
A comprehensive Power BI and MySQL-driven analytics project that visualizes Blinkit's retail sales data to uncover trends, improve decision-making, and drive operational insights.


## 📊 Project Overview

The **Blinkit Sales Dashboard** is a fully interactive Power BI solution designed to deliver **actionable insights** into retail performance across products, outlets, and customer segments. Tailored for business analysts and decision-makers, the dashboard enables users to:

- Monitor key performance indicators (KPIs) such as total sales, average sales, and customer ratings  
- Compare performance across **outlet types, sizes, and locations**  
- Analyze sales trends by **item category, fat content, and visibility**  
- Identify high-performing segments and underperforming patterns for strategic optimization

---

## 🧰 Tools Used

- 📊 **Power BI Desktop** – Used for building interactive dashboards with slicers, KPIs, drill-downs, and custom bookmarks
- 📑 **Microsoft Excel** – Performed initial data cleaning, preprocessing, and exploratory analysis before database import
- 📌 **MYSQL** - Structured storage and advanced querying of the dataset to extract business-critical insights\
- 📂 **Blinkit Dataset** – Contains sales, outlet, and product-level attributes

---

## 🔍 Key Features

- 💰 **Total Sales**, **Average Sales**, **Total Items**, and **Average Rating** at a glance
- 🕵️‍♂️ Explore sales across:
  - **Outlet Location Type** (Tier 1/2/3)
  - **Outlet Size** (Small, Medium, High)
  - **Outlet Type** (Grocery, Supermarket Type1/2/3)
- 🧃 Analyze performance by:
  - **Item Type** (e.g., Frozen Foods, Snacks, Fruits & Vegetables)
  - **Fat Content** (Low Fat vs Regular)
- 📊 Tab-Based Views:
  - Total Sales
  - Average Sales
  - Number of Items
  - Average Rating
- 🧹 **Reset All Slicers Button**: Quickly revert filters to default state

---

## 🔁 Reset Filters Feature (NEW)

A **"Reset All Filters"** button has been added using Power BI bookmarks and action triggers.

**How It Works:**
- A default bookmark was created representing the unfiltered dashboard
- A button linked to this bookmark is placed at the top-right corner
- When clicked, it resets all slicers and visuals to their default state

🟢 Enhances user experience by reducing filter overload during analysis.


---
### 📌 Advanced SQL Insights
- Year-over-year sales trend using window functions
- Top item types by outlet format
- Contribution analysis by fat content and outlet size
- Underperforming product categories with low rating and sales
- Tier-wise outlet profitability breakdown

---

## 📸 Dashboard Preview

### 📌 Overview Dashboard  
*Sales performance by outlet size, type, and location with KPIs*  
![Dashboard Overview](https://github.com/user-attachments/assets/a755144e-a73e-49e0-ae7e-295e56444517)

### 📌 Sales vs Item Visibility  
*Scatter plot comparing item shelf visibility with actual sales*  
![Sales vs Visibility](https://github.com/user-attachments/assets/08d89961-3ebf-4e0b-8e5e-6f2dde0a2923)

## 📊 Insights Extracted

---
- 💵 **Total Sales**: `$1.20M` with an average sale of `$141`
- 🏢 **Tier 3 Locations** lead with `$472.13K` in sales
- 🍔 **Regular Fat Content** items dominate with `$776.32K` sales
- 🥦 **Fruits & Vegetables** and **Snack Foods** are top-performing item types
- 🛒 **Supermarket Type1** leads with over `$787.55K` sales
- 📅 **2018** had the highest outlet establishment sales (`$205K`)
- 🏬 **High-sized outlets** contributed `$507.90K` in total sales

---

## 📁 Dataset Overview

| Column                   | Description                                  |
|--------------------------|----------------------------------------------|
| `Item Fat Content`       | Fat classification (Low Fat / Regular)       |
| `Item Identifier`        | Unique product code                          |
| `Item Type`              | Product category (e.g., Beverages, Snacks)   |
| `Item Visibility`        | Shelf visibility percentage                  |
| `Item Weight`            | Product weight in kilograms                  |
| `Outlet Identifier`      | Unique outlet code                           |
| `Outlet Establishment Year` | Year outlet was opened                    |
| `Outlet Size`            | Outlet size (Small / Medium / High)          |
| `Outlet Type`            | Supermarket Type or Grocery Store            |
| `Outlet Location Type`   | Tiered location classification (Tier 1/2/3)  |
| `Sales`                  | Sales in currency units                      |
| `Rating`                 | Customer satisfaction score (1-5)            |

---

## 🚀 How to Use

1. Open the `.pbix` file in Power BI Desktop
2. Use the left sidebar filters to slice the data by outlet size, type, and item categories
3. Click on the **"Reset Filters"** button to go back to the default view
4. Hover on visuals for additional insights using tooltips

🧠 Author
Built with 💛 by Tushar Swarnkar
