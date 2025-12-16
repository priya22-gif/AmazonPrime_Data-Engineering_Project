****🎬 Amazon Prime End-to-End Azure Data Engineering Project****

📌 **Project Overview**

This project demonstrates a production-grade end-to-end Azure Data Engineering pipeline built on the Amazon Prime Titles dataset.
The solution implements a modern medallion architecture (Bronze–Silver–Gold) using Azure Data Factory, Azure Data Lake Storage, Databricks, Azure Synapse Analytics, and Power BI, with CI/CD using Azure DevOps.

🏗️ **Architecture Overview:**

**Key design principles:**

Medallion Architecture (Bronze / Silver / Gold)
Incremental ingestion using Databricks Auto Loader
Parameterized pipelines for reusability
CI/CD using Azure DevOps
Analytics-optimized data warehouse

**🔄 End-to-End Project Flow**

**1️⃣ Data Ingestion (Azure Data Factory)**
 - Implemented multi-source ingestion:
     - CSV files ingested from GitHub (HTTP source)
     - One master dataset ingested incrementally using Databricks Auto Loader
 - Created Linked Services:
     - HTTP (Source)
     - Azure Data Lake Storage Gen2 (Sink)
 - Built a fully parameterized ADF pipeline with:
     - Relative URL
     - Folder name
     - File name
 - Pipeline Activities:
     - Web Activity – Fetch metadata from GitHub HTTP source
     - Set Variable Activity – Store response payload
     - Validation Activity – Validate master data availability
     - Lookup Activity – Read file metadata from JSON configuration 
     - ForEach Activity – Loop through files dynamically
     - Copy Activity – Load raw files into Bronze layer (CSV format)


      <img width="1917" height="624" alt="ADF_Pipeline" src="https://github.com/user-attachments/assets/54d99978-eaad-4a50-a6e7-240ce6b0d81a" />
       
2️⃣ Bronze Layer (Raw Data)
 - Stored ingested data in ADLS Bronze container
 - Preserved raw schema and structure
 - Enabled scalable ingestion for both batch and incremental data
   
3️⃣ Silver Layer (Databricks Transformations)
- Used Databricks notebooks with PySpark
- Implemented:
     - Incremental loading using Auto Loader.
       
       <img width="1919" height="859" alt="Incremental loading" src="https://github.com/user-attachments/assets/3eb05fed-0178-4048-8ac0-9b4470a99b82" />
  
     - Parameterized notebooks for reusable transformations.
       
       <img width="1919" height="863" alt="Parameterized_notebook" src="https://github.com/user-attachments/assets/bd1167fa-c555-4df8-a94c-d8e8558d0998" />
       
     - Lookup notebooks to dynamically pass parameters using workflows

       <img width="1919" height="851" alt="Workflow_job" src="https://github.com/user-attachments/assets/c5161b03-de78-499f-b3aa-a7e6551c1e4f" />

       
- Applied data transformations:
     - Schema standardization
     - Data type casting
     - Data quality handling
     - Deduplication and cleansing
       
       <img width="1898" height="867" alt="Silver_master_notebook" src="https://github.com/user-attachments/assets/182907e5-9d89-447a-a6f8-2508568184dd" />

       
- Orchestrated notebooks using Databricks Workflows
     - Scheduled pipelines to run on weekdays
       
       <img width="1915" height="826" alt="scheduler_job" src="https://github.com/user-attachments/assets/19d18245-c27f-49b6-b932-f4318ba78bc9" />

4️⃣ Gold Layer (Analytics & Warehousing)
- Built Gold layer using Azure Synapse Analytics
- Designed analytics-ready tables optimized for reporting
- Implemented curated datasets for:
     - Titles added per year
       
       <img width="1916" height="873" alt="Azure_synapse" src="https://github.com/user-attachments/assets/8ec0b672-09ba-4e19-b341-396c1b41c1ac" />

5️⃣ Data Visualization (Power BI)
- Integrated Power BI with Azure Synapse Analytics
- Built interactive dashboards showing:
      - Titles added per year
      <img width="1919" height="950" alt="Power BI" src="https://github.com/user-attachments/assets/11bfc1a5-2401-4446-95f7-e5c01324bfd1" />

🛠️ **Technologies Used**
- Cloud Platform: Microsoft Azure
- Data Ingestion: Azure Data Factory
- Data Storage: Azure Data Lake Storage Gen2
- Processing Engine: Azure Databricks (PySpark)
- Incremental Ingestion: Databricks Auto Loader
- Orchestration: Databricks Workflows
- Data Warehouse: Azure Synapse Analytics
- Visualization: Power BI
- CI/CD: Azure DevOps
- Version Control: GitHub

▶️**How to Run the Project**
- Clone the repository - git clone https://github.com/<your-username>/amazon-prime-azure-de-project.git
- Set up Azure resources
      - Azure Data Factory
      - Azure Data Lake Storage Gen2
      - Azure Databricks workspace
      - Azure Synapse Analytics
      - Power BI
- Configure Linked Services
      - HTTP source (GitHub)
      - ADLS Gen2
- Databricks
- Synapse
- Deploy ADF pipelines
- Update parameters for storage account and containers
- Trigger ingestion pipeline
- Run Databricks notebooks
- Execute Bronze → Silver transformations
- Schedule workflows
- Query Gold layer
- Validate curated tables in Synapse
- Open Power BI dashboards
- Connect to Synapse
- Refresh and explore reports
- 
📊 **Key Highlights for Resume**

- Designed enterprise-grade medallion architecture
- Implemented incremental ingestion using Databricks Auto Loader
- Built metadata-driven and parameterized ADF pipelines
- Integrated CI/CD using Azure DevOps
- Developed scalable PySpark transformations
- Built analytics-ready warehouse in Azure Synapse
- Created business dashboards using Power BI

✅ **Conclusion**

This project showcases a real-world Azure Data Engineering solution, covering the complete lifecycle from ingestion to analytics.
It demonstrates best practices in data modeling, orchestration, incremental processing, CI/CD, and visualization.
