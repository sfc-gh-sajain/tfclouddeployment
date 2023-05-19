resource snowflake_warehouse PROD_DATASCIENCE_WH {
  name = "PROD_DATASCIENCE_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}

resource snowflake_warehouse PROD_ETL_WH {
  name = "PROD_ETL_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}

resource snowflake_warehouse PROD_REPORTING_WH {
  name = "PROD_REPORTING_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}