# Superstore Retail Sales Performance & Demand Forecasting

[![SQL](https://img.shields.io/badge/Data_Extraction-SQL-blue)]()
[![Python](https://img.shields.io/badge/Modeling-Python_v3.9-green)]()
[![Tableau](https://img.shields.io/badge/Visualization-Tableau-orange)]()

An end-to-end business analyst project converting 4 years of siloed e-commerce data into actionable supply chain and marketing strategies. 

## 1. Project Background & Motivation
In the global retail sector, operational inefficiencies like overstocking and understocking account for up to 30% of inventory issues, directly translating to missed revenue and inflated holding costs (McKinsey, 2026). 

This project transitions "Superstore Global"—a US-based e-commerce retailer founded in the early 2010s with $2.26M in historical revenue—from intuition-based operations to data-driven forecasting.

* **Primary Stakeholders:** Supply Chain Managers, Category Planners, Operations Directors.
* **Objective:** Conduct exploratory data analysis (EDA) across regions, customer segments, and product categories to uncover revenue leakage, and build a time-series forecasting pipeline to stabilize post-holiday inventory cycles.

---

## 2. Dataset Overview & Data Aggregation
The analysis was performed on **9,800 transaction records** spanning a 4-year period (2015–2018). 
* **Target Variable:** Sales ($)
* **Dimensions Analyzed:** 
  * 4 Geographic Regions (East, West, Central, South)
  * 3 Product Categories (Technology, Furniture, Office Supplies) broken down into 17 distinct lines
  * 3 Customer Segments (Consumer, Corporate, Home Office)
  * 4 Shipping Modes (Standard Class, Second Class, First Class, Same Day)

---

## 3. Diagnostic Analytics & Business Insights

### A. Segment & Category Breakdown
* **The Consumer Engine:** The *Consumer* segment drives **51% of total revenue** ($1M+), doubling Corporate ($680K) and outperforming Home Office ($410K). 
* **Product Drivers:** *Technology* (37%) and *Furniture* (32%) generate the highest financial value, heavily carried by two flagship product lines: **Phones** and **Chairs**. Low-value lines like Fasteners, Labels, and Envelopes contribute near-zero revenue, signaling an opportunity to optimize shelf/warehouse space.

### B. Regional Leakage: The $321K South Opportunity
While the **West ($710K)** and **East ($670K)** regions account for 61.8% of total revenue, the **South ($389K)** heavily underperformed. 

However, a deep dive into data aggregation revealed a fascinating paradox:
* **The South has the highest Average Order Value (AOV) at $243.52** (compared to the West's $226.18).
* Conversely, the South suffered from the lowest order volume (**only 1,598 total orders**).

**Strategic Recommendation:** The South does not have a spending problem; it has an acquisition and order frequency problem. This is the **$321K regional gap** identified to close against peer regions.

### C. Shipment Bottlenecks
* **Standard Class** handles **59.8% of all orders (5,859 transactions)** but averages a **5.0-day fulfillment window**. This represents the single largest lever for improving customer retention and satisfaction scores.

---

## 4. Sales Forecasting Methodology & Evaluation
To prevent stockouts ahead of shifting demand, sales data was aggregated to a daily time-series index.

1. **Stationarity & Trend Check:** Inspection of the 4-year historical trend revealed massive, non-stationary Q4 seasonal spikes (e.g., peak growth in 2017 reached 30.6% YoY, with 2018 exiting at $722K).
2. **The Model:** A 30-day rolling mean baseline was integrated with a linear trend component fitted on the final 60 days of data to project a **7-Day Forecast Window** (Dec 31, 2018 – Jan 6, 2019).
3. **Evaluation:** The model successfully validated a sharp, post-holiday demand drop-off, forecasting a tight, low-volatility daily average of **~$2,727/day** (7-day total projection of **$19,091**).

| Date | Predicted Daily Sales ($) |
| :--- | :--- |
| Dec 31, 2018 | $3,104 |
| Jan 1, 2019 | $2,545 |
| Jan 2, 2019 | $2,769 |
| Jan 3, 2019 | $2,616 |
| Jan 4, 2019 | $2,708 |
| Jan 5, 2019 | $2,851 |
| Jan 6, 2019 | $2,498 |
| **7-Day Total** | **$19,091** |

---

## 5. Final Strategic Executive Roadmap
* **Inventory Allocation:** Stock high-value *Technology* and *Furniture* buffers (especially Phones and Chairs) 6–8 weeks ahead of the Q4 holiday surge. Utilize the forecasted low-volatility Jan–Feb window for clearance operations and stock rebalancing.
* **Targeted Marketing:** Deploy highly localized promotional campaigns in the *South region* to lift purchase frequency, capitalizing on their high average order thresholds.
* **Logistics Optimization:** Create standard-to-premium upgrade incentives or optimize carrier partnerships to compress the 5-day Standard Class shipping average down to a 3-day window.
