# UrbanMart — Retail Sales & Profitability Analytics

**End-to-end retail data analysis portfolio project | MySQL • Power BI • Excel**

A retail sales analytics case study exploring revenue, estimated profitability, product performance, customer purchasing, discounts, and store locations using transactional and product datasets.

> **Project scope:** A sample analytics dataset covering **January–December 2025**. Findings illustrate a business analytics workflow; this is not a claim of access to a real retailer's financial records.

## At a glance

| KPI | Value |
|---|---:|
| Net sales revenue | **₹1,75,09,696.59 (₹1.75 Cr)** |
| Estimated gross profit | **₹55,50,388.45 (₹55.50 L)** |
| Estimated gross margin | **31.7%** |
| Transactions | **6,000** |
| Distinct customers | **350** |
| Products | **90** |
| Store cities | **9** |

**Margin methodology:** estimated cost = quantity × product reference `cost_price`; estimated profit = net sales − estimated cost. This is **not an audited profit** or a transaction-level recorded COGS figure.

## Business questions

- How do monthly sales and revenue change over the year?
- Which products and categories generate the most revenue, and which are more profitable?
- Which cities and store locations perform best?
- How do discounts affect realized sales and estimated margins?
- Which customers contribute the highest spending?
- Which products are currently below their reorder level?

## Analytical approach

1. **Model:** Relate `Sales[product_id]` (many) to `Products[product_id]` (one).
2. **SQL:** Explore sales trends, category contribution, store performance, customers, and profitability.
3. **Power BI:** Model KPIs with DAX and build three analytical report pages.
4. **Quality checks:** 6,000 unique transaction IDs and no unmatched product IDs in the supplied data.

## Key findings

- **Electronics** was the leading category with approximately **₹59.36 L** in revenue.
- **Pune** was the highest-revenue store city at approximately **₹35.62 L**, closely followed by Mumbai.
- **December 2025** delivered the highest monthly revenue, approximately **₹25.08 L**.
- Estimated gross margin across the sample was **31.7%**. Because costs are reference prices, interpret profitability figures as model estimates.

## Power BI dashboard

The editable dashboard project has **three report pages**:

1. **Executive Overview** — KPI cards, revenue trends, categories, city and payment breakdowns
2. **Products & Profitability** — leading products, margin and discount analysis, inventory signals
3. **Customers & Stores** — customers, store-city comparisons and payment methods

**[Download the complete Power BI dashboard ZIP](powerbi/UrbanMart_Professional_PowerBI_Dashboard.zip)** · [Setup and DAX documentation](powerbi/README.md)

The ZIP includes the editable `.pbip` project with its report and semantic-model folders, three preview screenshots, sample datasets, a theme, and an offline HTML dashboard preview.

*To see the dashboard without Power BI Desktop, extract the ZIP and open `UrbanMart_Dashboard_Preview.html` in a browser.*

> The `.pbip` descriptor in `powerbi/` is **not sufficient by itself**. Open the complete ZIP package in Power BI Desktop after extracting it; it contains the required `.Report` and `.SemanticModel` folders. This programmatically created PBIP has not yet been verified by opening it in Power BI Desktop.

## Repository structure

```text
UrbanMart-Retail-Sales-Analytics/
├── README.md
├── data/
│   ├── products.csv
│   └── sales_transactions.csv
├── sql/
│   ├── 01_Database_and_Tables.sql
│   └── 02_Business_Analysis.sql
├── docs/
│   └── UrbanMart_Retail_SQL_Problem_Statement.docx
├── reports/
│   └── UrbanMart_Retail_Project_Report.pdf
└── powerbi/
    ├── README.md
    ├── UrbanMart_Retail_Analytics.pbip
    ├── UrbanMart_Theme.json
    ├── DAX_Measures.md
    └── UrbanMart_Professional_PowerBI_Dashboard.zip
```

## How to explore

**SQL:** Create schema and tables from `sql/01_Database_and_Tables.sql`, import the CSVs, then run `sql/02_Business_Analysis.sql`.

**Power BI:** [Download the complete Power BI dashboard ZIP](powerbi/UrbanMart_Professional_PowerBI_Dashboard.zip) from `powerbi/`. Extract it fully, open `UrbanMart_Retail_Analytics.pbip` in a current Power BI Desktop build, and validate data and visuals. See the setup guide linked above.

## Project documentation

- [SQL problem statement](docs/UrbanMart_Retail_SQL_Problem_Statement.docx)
- [Project report (PDF)](reports/UrbanMart_Retail_Project_Report.pdf)
- [SQL analysis queries](sql/02_Business_Analysis.sql)
- [DAX measures](powerbi/DAX_Measures.md)

---

**Portfolio project by Yash Govindwar** · [GitHub profile](https://github.com/ItsYash047)
