# 🧱 AdventureWorks dbt Transformations

This repository contains a [dbt](https://www.getdbt.com/) project designed for the transformation of data from the `ted_dev.dbt_adventureworks_raw` source into curated **Bronze**, **Silver**, and **Gold** layers using the **AdventureWorks** dataset.

---

## 🗂️ Project Structure

### Data Sources
- **Source schema**: `ted_dev.dbt_adventureworks_raw`  
  The raw layer includes `.parquet`-extracted staging data.

### Layered Architecture
The project follows a **multi-layered architecture** to ensure separation of concerns and data quality at each step:

- **Bronze**: `ted_dev.dbt_adventureworks_bronze`  
  - Cleans and standardizes raw data (column renaming, types, null handling).
  
- **Silver**: `ted_dev.dbt_adventureworks_silver`  
  - Applies business rules, joins, enrichments, and normalization logic.

- **Gold**: `ted_dev.dbt_adventureworks_gold`  
  - Contains final curated data marts used for analytics and reporting.

---

## 🧾 Tables

The following source tables are transformed throughout the layers:

| Table Name                  | Description                                      |
|----------------------------|--------------------------------------------------|
| `countryregion`            | Country or region reference data                 |
| `customer`                 | Customer data                                    |
| `employee`                 | Company employee information                     |
| `person`                   | Personal information tied to customers/employees|
| `product`                  | Product catalog                                  |
| `productcategory`          | Top-level product categorization                 |
| `productsubcategory`       | Nested subcategories within each product category|
| `salesorderdetail`         | Line item details of sales orders                |
| `salesorderheader`         | Headers for sales orders                         |
| `salesorderheadersalesreason` | Mapping of sales orders to sales reasons    |
| `salesperson`              | Salesperson-related performance and attribution  |
| `salesreason`              | Reasons assigned to sales orders                 |
| `salesterritory`           | Geographic sales territories                     |

---

## 🚀 Execution Flow

1. **dbt Cloud Job** (or `dbt run`) orchestrates the following:
    - Loads and validates raw data from `ted_dev.dbt_adventureworks_raw`
    - Runs `bronze/` models to normalize raw structure
    - Runs `silver/` models to apply business logic
    - Runs `gold/` models to build analytic-ready marts

---

## 🛠️ How to Use

### Prerequisites
- dbt Cloud account or dbt CLI with configured connection to Databricks
- Required access to the `ted_dev` catalogs

### Running dbt Locally

```bash
# Install dependencies
dbt deps

# Compile the DAG
dbt compile

# Run transformations
dbt run

# Run tests
dbt test

### Orchestrating in Databricks Workflows

# In order to create a orchestration pipeline, create a job in Databricks with one task for each notebook in the "PipelineNotebooks" directory.
