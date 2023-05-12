terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.55.1"
    }
  }

  backend "remote" {
    organization = "sfc-gh-sajain"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource snowflake_database PROD_AP_PL_DC_DB {
  name = "PROD_AP_PL_DC_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_PL_DC_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_PL_DC_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

resource snowflake_database PROD_AP_RL_DC_DB {
  name = "PROD_AP_RL_DC_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_RL_DC_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_RL_DC_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

resource snowflake_database PROD_AP_SL_DC_DB {
  name = "PROD_AP_SL_DC_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_SL_DC_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_SL_DC_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

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

resource snowflake_role PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_PL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_RL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_SL_DC_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_U_AR {
  name = "PROD_DATASCIENCE_WH_U_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_UM_AR {
  name = "PROD_DATASCIENCE_WH_UM_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_FULL_AR {
  name = "PROD_DATASCIENCE_WH_FULL_AR"
}

resource snowflake_role PROD_ETL_WH_U_AR {
  name = "PROD_ETL_WH_U_AR"
}

resource snowflake_role PROD_ETL_WH_UM_AR {
  name = "PROD_ETL_WH_UM_AR"
}

resource snowflake_role PROD_ETL_WH_FULL_AR {
  name = "PROD_ETL_WH_FULL_AR"
}

resource snowflake_role PROD_REPORTING_WH_U_AR {
  name = "PROD_REPORTING_WH_U_AR"
}

resource snowflake_role PROD_REPORTING_WH_UM_AR {
  name = "PROD_REPORTING_WH_UM_AR"
}

resource snowflake_role PROD_REPORTING_WH_FULL_AR {
  name = "PROD_REPORTING_WH_FULL_AR"
}