# Project Title: Airbnb Data Pipeline with dbt
This project uses dbt to extract, transform, and load Airbnb data from public data sources. The goal is to create a reliable and maintainable data pipeline used by BI tools and other analysts.


## Data Sources

 - [Airbnb Data](s3://dbtlearn) : This s3 bucket contains all the files used in this project.


## Tools Used

This project uses the following tools:

 - Dbt (Data Build Tool): A popular open-source tool for creating data pipelines that is built on top of SQL
 - Snowflake: A cloud data warehousing platform that is used to store and manage the data
 - GitHub: A web-based hosting service for version control and collaboration
 - Dbt-expectation library package
 - Dbt_utils package
 

## Project Structure

All your files and folders are presented as a tree in the file explorer. You can switch from one to another by clicking a file in the tree.
## Project Structure

The project is structured as follows:


├── analyses
├── macros
├── models
├── packages.yml
├── README.md
├── seeds
├── snapshots
└── tests
  
-   `seed/`: Contains the raw data to be uploaded to
-   `models/`: Contains the SQL models for the data pipeline
-   `analysis/`: Contains any analysis files or scripts
-   `macros/`: Contains any custom macros used in the models
-   `packages.yml`: Contains external dependencies added to dbt
- `tests`:  Contains model tests for different models
- `snapshot:  contains snapshot data on the listings table
-   `README.md`: The file you're currently reading!
## Pipeline Overview

1.  **Extract:** Raw Airbnb data is extracted from the amazone s3 puplic bucket and stored in the `models/src/` folder.
2.  **Transform:** The raw data is transformed into a format that is more suitable for analysis and stored in the `models/dim` folder.
3.  **Load:** The transformed data is loaded into the Snowflake data warehouse and stored in the `models/dim` folder.
4.  **Analyze:** The data is analyzed using SQL queries and visualizations.

## How to Run

To run the pipeline, follow these steps:

1.  Clone the repository to your local machine.
2.  Set up a Snowflake account and create a database and schema.
3.  Set up a dbt profile to connect to your Snowflake account.
4.  Run `dbt seed` to load the raw data into the `data/raw` folder.
5.  Run `dbt run` to execute the data pipeline.
6.  Analyze the data using SQL queries or visualizations in the `analysis/` folder.

## Conclusion

This project demonstrates how dbt can be used to create a reliable and maintainable data pipeline for Airbnb data. With the help of dbt, we were able to easily extract, transform, and load the data into Snowflake, making it easy to analyze and report on.