# CAC Specialty – Data Infrastructure & Analytics Simulation

## Objective

Demonstrate end-to-end data engineering workflows for a mid-sized insurance brokerage (modeled on CAC Specialty/Cobbs Allen), including ingestion, transformation, modeling, and BI-ready analytics.## Objective


## Business ContextDemonstrate insurance data engineering workflows based on real-world experience (2019–2021), simulating how AWS, SQL, and Power BI were used to integrate data and deliver insights.

CAC Specialty is a risk advisory and insurance brokerage serving industries such as healthcare, construction, finance, and energy. Brokers manage client accounts, carriers underwrite policies, and the firm tracks performance across premiums, claims, and client retention.

## Use Cases

This repo simulates the **data engineering process** that supports reporting and decision-making in such an environment.

- Ingest structured data (Salesforce CRM, claims, policies, spreadsheets) into AWS S3.

## Tech Stack- Build SQL-based staging, fact, and dimension tables for standardized reporting.

- **AWS S3** → raw data storage (landing zone)- Create Power BI dashboards for broker performance, client retention, and claims analysis.

- **PostgreSQL / SQL Server** → data warehouse / transformation- Deliver reproducible insights through optimized queries and documentation.

- **SQL + dbt** → dimensional models (dims/facts)

- **Airflow / Prefect** → orchestration## Tech Stack (2019–2021)

- **Power BI** → dashboards

- **GitHub** → documentation, reproducibility- **AWS S3** → raw data storage

- **SQL (PostgreSQL / SQL Server)** → transformation & reporting

## Data Flow- **Salesforce CRM** → client + broker source data

1. **Ingestion (Bronze)**: Import structured data (Accounts, Brokers, Policies, Claims, Carriers, Exposures, Broker KPIs) into staging.- **Power BI / Excel** → dashboards & reporting

2. **Transformation (Silver)**: Clean and standardize into dimension tables (dim_accounts, dim_brokers, dim_carriers, dim_policies).

3. **Fact Tables**: Build fact_premium (policies + endorsements) and fact_claims.

4. **Analytics Marts (Gold)**: Create mart_broker_performance and mart_client_loss_ratio for BI consumption.
5. **Orchestration**: Automate refreshes (simulated with Airflow DAGs).
6. **Delivery**: Power BI dashboards for executives and brokers.

## Entity-Relationship Diagram
![CAC Specialty ERD](CAC_ERD.png)

## Repo Layout
