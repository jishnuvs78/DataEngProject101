import os

from datetime import datetime

from airflow import DAG

from airflow.operators.bash import BashOperator



path_to_local_home = os.environ.get("AIRFLOW_HOME", "/opt/airflow/")

with DAG(
    dag_id="local_ingestion_dag",
    schedule="0 6 2 * *",   # every 2nd of the month at 06:00
    start_date=datetime(2021, 1, 1),
    catchup=False,
    tags=["example"],
) as dag:

    wget_task = BashOperator(
        task_id="wget",
        bash_command='echo "Testing Dag task1"',
    )

    ingest_task = BashOperator(
        task_id="ingest",
        bash_command='echo "Testing Dag task2"',
    )

    wget_task >> ingest_task
