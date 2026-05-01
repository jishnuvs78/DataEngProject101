# DataEngProject101

A comprehensive data engineering project demonstrating a complete data pipeline architecture with orchestration, batch processing, analytics engineering, and real-time streaming capabilities.

## 📋 Project Overview

This project implements a modern data stack for NYC Taxi data processing, featuring:
- **Data Orchestration**: Apache Airflow for workflow management
- **Batch Processing**: PySpark for large-scale data transformations
- **Analytics Engineering**: dbt for data modeling and transformations
- **Data Warehousing**: Google Cloud Platform (BigQuery) integration
- **Streaming**: Apache Flink for real-time data processing
- **Infrastructure as Code**: Terraform for cloud resource provisioning

## 📁 Project Structure

### `/airflow` - Data Orchestration
Apache Airflow workflows for scheduling and orchestrating data pipelines.

**Key Components:**
- `dags/data_gcs_ingestion.py` - Pipeline for ingesting data to Google Cloud Storage
- `dags/data_ingestion_demo.py` - Demo ingestion pipeline
- `docker-compose.yaml` - Docker setup for Airflow
- `requirements.txt` - Python dependencies

**Features:**
- Automatic data download from external sources
- CSV to Parquet conversion
- BigQuery external table creation
- GCS bucket integration

### `/batch` - Batch Processing with PySpark
PySpark scripts and Jupyter notebooks for large-scale data processing.

**Key Files:**
- `06_spark_sql.py` - Main Spark SQL script for data aggregation and joining
- `07_groupby_join.ipynb` - Group by and join operations notebook
- `08_spark_gcs.ipynb` - GCS integration with Spark
- `download_data.sh` - Script to download source datasets

**Data Assets:**
- `data/raw/` - Raw data files
- `data/pq/` - Parquet format processed data
- `data/report/` - Report generation outputs
- `fhvhv/` - NYC FHVHV (For-Hire Vehicle with High Volume) data

### `/docker_sql` - PostgreSQL Data Ingestion
Docker-based PostgreSQL setup for initial data ingestion and transformation.

**Key Components:**
- `Dockerfile` - PostgreSQL container definition
- `docker-compose.yaml` - Multi-container orchestration
- `ingest_data.py` - Python script for data ingestion into PostgreSQL
- `pipeline.py` - Data pipeline logic
- `taxi_zone_lookup.csv` - NYC taxi zone reference data

**Features:**
- CSV and Parquet file support
- Chunked data loading for memory efficiency
- PostgreSQL integration using SQLAlchemy

### `/dbt-analytics-engineering` - Data Modeling and Transformations
dbt project for analytics engineering and data transformation.

**Structure:**
- `models/` - dbt data models (staging and core transformations)
- `tests/` - Data quality tests
- `macros/` - Reusable SQL macros
- `seeds/` - Reference datasets
- `snapshots/` - Slowly Changing Dimension tracking

**Project:** `taxi_rides_ny` - NYC Taxi rides analysis project

### `/streaming` - Real-Time Data Processing
Apache Flink setup for stream processing.

**Components:**
- `Dockerfile.flink` - Flink container configuration
- `docker-compose.yml` - Flink cluster setup
- `flink-config.yaml` - Flink configuration
- `main.py` - Main streaming application entry point
- `src/` - Source code directory
  - `models.py` - Data models for streaming
  - `consumers/` - Kafka consumer implementations
  - `producers/` - Data producer implementations
  - `job/` - Flink job definitions

### `/terrademo` - Infrastructure as Code
Terraform scripts for provisioning GCP infrastructure.

**Key Resources:**
- `main.tf` - Primary Terraform configuration
- `variables.tf` - Variable definitions
- `keys/` - GCP service account credentials

**Resources Managed:**
- Google Cloud Storage buckets (data lake)
- BigQuery datasets
- Compute Engine instances
- Networking and IAM configurations

### `/serving_dir` - Model Serving
Directory for model deployment and serving.

**Structure:**
- `tip_model/1/` - Versioned machine learning model artifacts

## 🚀 Quick Start

### Prerequisites
- Docker & Docker Compose
- Python 3.7+
- Google Cloud Platform account (with credentials)
- Terraform (for infrastructure provisioning)

### Environment Setup

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd DataEng