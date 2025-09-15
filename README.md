# CAC Specialty – Data Engineering Simulation (Authentic Stack)

## Objective
Recreate the data workflows used at CAC Specialty (2019–2021) to demonstrate how structured insurance data (Salesforce CRM, spreadsheets, claims systems) was integrated, transformed, and delivered through Power BI dashboards.

## Use Cases
- Track broker KPIs (premium written, retention, claims paid).
- Analyze client-level performance (loss ratios by line of business).
- Monitor exposure metrics (payroll, sales, employees).
- Provide leadership with timely reporting (cut reporting turnaround by 30%).

## Tech Stack (2019–2021)
- **AWS S3** → storage for raw structured data (CSV, Excel, claims extracts)
- **SQL (AWS RDS / SQL Server / PostgreSQL)** → transformations & reporting tables
- **Salesforce CRM** → client, broker, policy source data
- **Power BI & Excel** → dashboards and ad hoc reporting
- **Tableau (limited use)** → some visualization support for teams

## Data Flow
1. **Ingestion (Bronze)**: Raw Salesforce/claims data and spreadsheets uploaded to AWS S3.  
2. **Staging (Silver)**: SQL staging tables standardize client, broker, policy, and claims data.  
3. **Modeling**: Fact tables (premium, claims) and dimension tables (accounts, brokers, carriers, policies).  
4. **Analytics (Gold)**: BI marts for broker performance and client loss ratios.  
5. **Delivery**: Dashboards in Power BI and Excel for leadership and underwriting teams.


## Entity-Relationship Diagram

## Repo Layout
```
CAC_DataEngineering/
├── data/                
│   ├── accounts.csv
│   ├── brokers.csv
│   ├── carriers.csv
│   ├── policies.csv
│   ├── claims.csv
│   ├── endorsements.csv
│   ├── exposures.csv
│   └── broker_monthly_kpis.csv
├── sql/                 
│   ├── staging_tables.sql
│   ├── dim_accounts.sql
│   ├── dim_brokers.sql
│   ├── dim_carriers.sql
│   ├── dim_policies.sql
│   ├── fact_premium.sql
│   ├── fact_claims.sql
│   └── marts.sql   # (broker performance + client loss ratio)
├── powerbi/            
│   └── Broker_Performance.pbix
└── README.md
```
