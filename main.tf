terraform {
  required_providers {
    snowflake = {
      source = "Snowflake-Labs/snowflake"
      version = "0.64.0"
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

resource "snowflake_database" "demo_new_db" {
  name    = "DEMO_NEW_DB"
  comment = "Database for Snowflake Terraform demo"
}

resource "snowflake_schema" "demo_schema" {
  database = snowflake_database.demo_new_db.name
  name     = "DEMO_SCHEMA"
  comment  = "Schema for Snowflake Terraform demo"
}

resource snowflake_database PROD_AP_PL_DC_DB_DB {
  name = "PROD_AP_PL_DC_DB_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

resource snowflake_database PROD_AP_RL_DC_DB_DB {
  name = "PROD_AP_RL_DC_DB_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

resource snowflake_database PROD_AP_SL_DC_DB_DB {
  name = "PROD_AP_SL_DC_DB_DB"
  is_transient = false
}

resource snowflake_schema PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA {
  database = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  name = "BANKCORE_EXTRACT_DNA"
  is_managed = true
  is_transient = false
}

resource snowflake_warehouse PROD_DATASCIENCE_WH_WH {
  name = "PROD_DATASCIENCE_WH_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}

resource snowflake_warehouse PROD_ETL_WH_WH {
  name = "PROD_ETL_WH_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}

resource snowflake_warehouse PROD_REPORTING_WH_WH {
  name = "PROD_REPORTING_WH_WH"
  warehouse_size = "MEDIUM"
  initially_suspended = true
  max_cluster_count = 1
  min_cluster_count = 1
  auto_suspend = 600
  auto_resume = true
}

resource snowflake_role PROD_ANALYST_FR {
  name = "PROD_ANALYST_FR"
}

resource snowflake_role_grants role_prod_analyst_fr_grants {
  role_name = snowflake_role.PROD_ANALYST_FR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role PROD_DEVELOPER_FR {
  name = "PROD_DEVELOPER_FR"
}

resource snowflake_role_grants role_prod_developer_fr_grants {
  role_name = snowflake_role.PROD_DEVELOPER_FR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role PROD_REPORTING_FR {
  name = "PROD_REPORTING_FR"
}

resource snowflake_role_grants role_prod_reporting_fr_grants {
  role_name = snowflake_role.PROD_REPORTING_FR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role PROD_SERVICE_FR {
  name = "PROD_SERVICE_FR"
}

resource snowflake_role_grants role_prod_service_fr_grants {
  role_name = snowflake_role.PROD_SERVICE_FR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}