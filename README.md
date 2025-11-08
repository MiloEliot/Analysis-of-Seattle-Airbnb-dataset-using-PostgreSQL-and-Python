# PostgreSQL Seattle Airbnb Analysis

## 1. Introduction
The project demonstrates SQL data processing, aggregation, and analysis in a reproducible Jupyter notebook workflow. It highlights the use of SQL window functions and custom functions, integrates Python packages for data visualization, and includes data cleaning techniques.

## 2. Database Setup
The Seattle Airbnb dataset has been compiled into a SQL database and it can be found [here](https://www.kaggle.com/datasets/airbnb/seattle).However, the relationship among tables is missing. Therefore, the first step is to review the tables and build the relationship among them. To this end, the following SQL script was written: 
- [Build relational database](./SQL/seattle_airbnb_schema.sql)

## 3. Repository Structure
- `sql` - SQL script
- `outputs` - the database [schema](./outputs/seattle_airbnb_schema.png) and the distribution of accommodations on the [map](./outputs/seattle_airbnb.map.html)
- `Seattle_airbnb_analysis.ipynb` - The Jupyter notebook demonstrates the integration of PostgreSQL with Python for data processing, analysis, and visualization.

