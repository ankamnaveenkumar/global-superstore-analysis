# 📊 Global Superstore Sales Analysis | SQL + Power BI

## 🧠 Objective

To perform exploratory data analysis on retail sales data to uncover key factors affecting profitability, including discount strategies, product category performance, customer purchasing behavior, and regional trends, and to identify actionable opportunities for improving business performance.

---

## ❗ Business Problem

The business is experiencing inconsistent profitability due to:

* High discounting practices
* A large proportion of loss-making orders
* Uneven performance across categories and regions

This project identifies the root causes and provides data-driven recommendations.

---

## 🛠️ Tools & Technologies

* SQL (Data Analysis & Querying)
* Power BI (Dashboard & Visualization)
* Python (EDA & Data Processing)

---

## 📂 Dataset

Dataset sourced from Kaggle – Global Superstore Dataset.
Contains transactional data including sales, profit, discounts, customers, products, and shipping details.

---

## 📊 Key Business Questions

* What is the overall profit margin?
* What % of orders are loss-making?
* How do discounts impact profitability?
* Which categories and regions drive profit or loss?
* Who are the highest-value customers?

---

## 📈 Dashboard Overview

### Executive Overview

![Executive Overview](images/executive_overview.png)

### Profitability & Performance Analysis

![Profitability Dashboard](images/profitability_dashboard.png)

---

## 🔍 Key Insights (Quantified)

* 💰 **Total Sales:** 12.6M

* 📈 **Total Profit:** 1.47M

* 📊 **Profit Margin:** 11.6% → indicates moderate profitability

* ⚠️ **30.1% of total orders are loss-making** → critical business issue

* 💸 **Discount Impact:**

  * Discounts above **30% consistently lead to negative profit**
  * High-discount segments contribute disproportionately to losses

* 📦 **Category Performance:**

  * Technology → ~14% profit margin (highest)
  * Office Supplies → ~13.7% profit margin
  * Furniture → ~6.9% profit margin (underperforming)

* 👥 **Customer Insights:**

  * Total Customers: 4,447
  * A small segment (~20%) contributes majority of revenue (Pareto effect)

* 🌍 **Regional Trends:**

  * Certain regions generate high sales but lower profit due to shipping and discounting
  * Shipping cost contributes ~10.7% of sales → impacts margins

---

## 💡 Business Recommendations

* Reduce discounting beyond 30% to prevent losses
* Focus on high-margin categories like Technology and Office Supplies
* Re-evaluate pricing and cost structure for Furniture category
* Target top 20% high-value customers for retention and upselling
* Optimize logistics to reduce shipping costs in low-profit regions

---

## 🧾 SQL Analysis Highlights

* Calculated overall sales, profit, and profit margins
* Identified loss-making orders (~30%)
* Analyzed discount vs profit relationship
* Performed category and regional performance analysis
* Identified top customers and repeat customer behavior

---

## 📁 Project Structure

```
global-superstore-analysis/
│
├── data/                  # Dataset
├── sql/                   # SQL queries
├── notebooks/             # EDA & ETL (Python)
├── dashboard/             # Power BI file
├── images/                # Dashboard screenshots
└── README.md
```

---

## 🚀 Conclusion

This analysis highlights key profitability challenges driven by discount strategies, category inefficiencies, and operational costs. By addressing these areas, the business can significantly improve margins and overall performance.

---
