# 🚗 CARS24 Used Car Price Analysis

## 📌 Project Overview

This project is an end-to-end **Used Car Price Analysis** project based on CARS24 used-car data.

The objective is to analyze used-car pricing patterns and identify how factors such as **manufacturing year, KM Driven, fuel type, transmission, ownership, brand, and vehicle characteristics** influence car prices.

The project uses **MySQL for data analysis** and **Power BI for interactive data visualization and dashboard development**.

This project demonstrates a complete **Data Analyst workflow** — from data exploration and SQL analysis to dashboard creation and business insights.

---

## 🎯 Business Objectives

The key objectives of this project are:

* Analyze the overall used-car price distribution.
* Identify brands and models with higher and lower average prices.
* Understand the relationship between **vehicle age and price**.
* Analyze the impact of **KM Driven on car prices**.
* Compare prices across different **fuel types**.
* Compare **manual and automatic transmission** vehicles.
* Analyze the relationship between **ownership history and price**.
* Identify pricing patterns across manufacturing years.
* Identify important factors associated with used-car prices.
* Create an interactive Power BI dashboard to communicate the findings.

---

## 🛠️ Tools & Technologies

| Tool            | Purpose                                  |
| --------------- | ---------------------------------------- |
| **MySQL**       | SQL querying and data analysis           |
| **SQL**         | Business analysis and insight generation |
| **Power BI**    | Interactive dashboard and visualization  |
| **Excel / CSV** | Data storage and preparation             |
| **GitHub**      | Project documentation and portfolio      |

### SQL Concepts Used

* SELECT
* WHERE
* ORDER BY
* GROUP BY
* HAVING
* LIMIT
* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* CASE
* Aggregate Functions
* Conditional Filtering
* Data Aggregation
* Business Analysis

---

## 📊 Dataset Overview

The dataset contains information about used cars listed for sale.

The analysis considers vehicle attributes such as:

* Brand
* Model
* Manufacturing Year
* Fuel Type
* Transmission
* KM Driven
* Ownership
* Selling Price
* Other vehicle-related attributes

These variables were analyzed to understand used-car pricing patterns and market trends.

> **Note:** The dataset is used for educational and portfolio purposes. Any publicly shared dataset should comply with the original data source's terms of use.

---

## 🔄 Project Workflow

```text
Raw Used-Car Data
       ↓
Data Understanding
       ↓
Data Cleaning & Preparation
       ↓
MySQL Database
       ↓
SQL Business Analysis
       ↓
Key Insights
       ↓
Power BI Data Modeling
       ↓
Interactive Dashboard
       ↓
Business Recommendations
```

---

## 🗄️ SQL Analysis

The project contains **18 analytical SQL queries from Q11 to Q28**.

These queries were designed to answer business questions related to:

* Vehicle pricing
* Brand performance
* Manufacturing year
* Vehicle age
* KM Driven
* Fuel type
* Transmission
* Ownership
* Price comparison
* Market trends

### 🔍 SQL Query Analysis

| Query | Analysis Area                 |
| ----- | ----------------------------- |
| Q11   | Used-car pricing analysis     |
| Q12   | Brand-level price analysis    |
| Q13   | Model-level analysis          |
| Q14   | Manufacturing-year analysis   |
| Q15   | Vehicle age and pricing       |
| Q16   | KM Driven analysis            |
| Q17   | Fuel-type comparison          |
| Q18   | Transmission-type comparison  |
| Q19   | Ownership analysis            |
| Q20   | Average price comparison      |
| Q21   | Brand/model performance       |
| Q22   | Price-based analysis          |
| Q23   | High-value vehicle analysis   |
| Q24   | Low-value vehicle analysis    |
| Q25   | Vehicle popularity analysis   |
| Q26   | Pricing trend analysis        |
| Q27   | Comparative business analysis |
| Q28   | Final analytical analysis     |

---

## 📸 SQL Query Results

SQL query-result screenshots are included in the repository.

The screenshots are organized as:

```text
screenshots/
└── sql-query-results/
    ├── Q11.png
    ├── Q12.png
    ├── Q13.png
    ├── Q14.png
    ├── Q15.png
    ├── Q16.png
    ├── Q17.png
    ├── Q18.png
    ├── Q19.png
    ├── Q20.png
    ├── Q21.png
    ├── Q22.png
    ├── Q23.png
    ├── Q24.png
    ├── Q25.png
    ├── Q26.png
    ├── Q27.png
    └── Q28.png
```

The complete SQL script is available in:

```text
sql/cars24_used_car_price_analysis.sql
```

---

## 📈 Power BI Dashboard

The SQL analysis was transformed into an interactive **Power BI dashboard** to provide a visual overview of used-car pricing and vehicle characteristics.

### Dashboard Features

* KPI Cards
* Average Car Price
* Vehicle Count
* Brand-wise Analysis
* Fuel-type Analysis
* Transmission Analysis
* Manufacturing-year Analysis
* KM Driven Analysis
* Price Comparison
* Interactive Filters and Slicers

### Dashboard Preview

![CARS24 Power BI Dashboard](screenshots/cars24_dashboard.png)

---

## 💡 Key Insights

The analysis focuses on understanding the following relationships:

### 🚘 Brand & Price

Different brands have different average selling prices due to factors such as brand positioning, vehicle segment, customer demand, and perceived value.

### 📅 Manufacturing Year

Vehicle age is an important factor in used-car pricing. Newer vehicles generally have stronger resale values compared with older vehicles.

### 🛣️ KM Driven & Price

KM Driven can influence the resale value of a vehicle. Vehicles with fewer kilometers driven generally have stronger pricing potential when compared with similar vehicles.

### ⛽ Fuel Type

Used-car prices vary across fuel types due to differences in vehicle characteristics, operating costs, availability, and customer preferences.

### ⚙️ Transmission

Automatic and manual vehicles can show different pricing patterns depending on market demand and vehicle segment.

### 👤 Ownership

The number of previous owners can influence buyer perception and resale value.

> **Note:** Specific numerical findings should be interpreted from the SQL query results and Power BI dashboard.

---

## 📌 Business Recommendations

Based on the analysis, the following recommendations can be considered:

### 1. Data-Driven Vehicle Pricing

Used-car pricing can consider multiple factors such as:

**Brand + Model + Year + KM Driven + Fuel Type + Transmission + Ownership**

instead of relying on a single factor.

### 2. Inventory Optimization

Used-car platforms can analyze high-demand brands and vehicle categories to optimize inventory acquisition.

### 3. Vehicle Valuation

Historical pricing patterns can support more consistent and data-driven vehicle valuation.

### 4. Depreciation Analysis

Vehicle age and manufacturing year can be incorporated into pricing strategies to understand depreciation.

### 5. Customer Segmentation

Fuel type, transmission, price range, and vehicle characteristics can help identify different customer preferences.

---

## 📁 Repository Structure

```text
CARS24-Used-Car-Price-Analysis/
│
├── sql/
│   └── cars24_used_car_price_analysis.sql
│
├── screenshots/
│   ├── dashboard.png
│   │
│   └── sql-query-results/
│       ├── Q11.png
│       ├── Q12.png
│       ├── Q13.png
│       ├── Q14.png
│       ├── Q15.png
│       ├── Q16.png
│       ├── Q17.png
│       ├── Q18.png
│       ├── Q19.png
│       ├── Q20.png
│       ├── Q21.png
│       ├── Q22.png
│       ├── Q23.png
│       ├── Q24.png
│       ├── Q25.png
│       ├── Q26.png
│       ├── Q27.png
│       └── Q28.png
│
└── README.md
```

---

## 🧠 Skills Demonstrated

### SQL & Data Analysis

* MySQL
* SQL Querying
* Data Aggregation
* Filtering
* Grouping
* Sorting
* Conditional Analysis
* Business Problem Solving
* Data-driven Insights

### Power BI

* Dashboard Development
* KPI Creation
* Data Visualization
* Interactive Slicers
* Business Reporting
* Data Storytelling

### Portfolio Development

* GitHub Repository Management
* Project Documentation
* SQL Result Documentation
* Dashboard Presentation

---

## 🎓 Project Learning Outcomes

Through this project, I developed practical experience in:

* Understanding a real-world business problem.
* Converting business questions into SQL queries.
* Analyzing structured data using MySQL.
* Identifying pricing patterns and trends.
* Creating an interactive Power BI dashboard.
* Communicating analytical findings through visualizations.
* Presenting an end-to-end Data Analyst portfolio project.

---

## 🚀 Future Improvements

The project can be further enhanced by:

* Developing a **used-car price prediction model**.
* Applying machine learning techniques for price prediction.
* Performing correlation and statistical analysis.
* Adding geographical analysis if location data is available.
* Adding advanced DAX calculations.
* Creating automated data-refresh workflows.
* Comparing predicted prices with actual market prices.

---

## 👨‍💻 About Me

**Dhiraj Shingane**

Aspiring **Data Analyst** with hands-on knowledge of **SQL, Excel, Power BI, DAX, and Data Visualization**.

I am interested in transforming raw data into meaningful business insights and creating dashboards that support data-driven decision-making.

### Technical Skills

`SQL` `MySQL` `Excel` `Power BI` `DAX` `Data Analysis` `Data Visualization` `GitHub`

---

## ⭐ Project Highlights

| Category          | Details                        |
| ----------------- | ------------------------------ |
| **Project**       | CARS24 Used Car Price Analysis |
| **Domain**        | Automotive / Used-Car Market   |
| **Project Type**  | Data Analytics                 |
| **SQL Database**  | MySQL                          |
| **Visualization** | Power BI                       |
| **SQL Queries**   | 18 Analytical Queries          |
| **Query Range**   | Q11 – Q28                      |
| **Dashboard**     | Interactive Power BI Dashboard |

---

## 📌 Disclaimer

This project is created for **educational and portfolio purposes**.

CARS24 is referenced as the subject/domain of analysis. The SQL analysis, dashboard, and documentation are independently created for learning and demonstration of data analytics skills.
