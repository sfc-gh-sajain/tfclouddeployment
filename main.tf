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

resource snowflake_role PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR {
  name = "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR {
  name = "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR"
}

resource snowflake_role PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR {
  name = "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_WH_U_AR {
  name = "PROD_DATASCIENCE_WH_WH_U_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_WH_UM_AR {
  name = "PROD_DATASCIENCE_WH_WH_UM_AR"
}

resource snowflake_role PROD_DATASCIENCE_WH_WH_FULL_AR {
  name = "PROD_DATASCIENCE_WH_WH_FULL_AR"
}

resource snowflake_role PROD_ETL_WH_WH_U_AR {
  name = "PROD_ETL_WH_WH_U_AR"
}

resource snowflake_role PROD_ETL_WH_WH_UM_AR {
  name = "PROD_ETL_WH_WH_UM_AR"
}

resource snowflake_role PROD_ETL_WH_WH_FULL_AR {
  name = "PROD_ETL_WH_WH_FULL_AR"
}

resource snowflake_role PROD_REPORTING_WH_WH_U_AR {
  name = "PROD_REPORTING_WH_WH_U_AR"
}

resource snowflake_role PROD_REPORTING_WH_WH_UM_AR {
  name = "PROD_REPORTING_WH_WH_UM_AR"
}

resource snowflake_role PROD_REPORTING_WH_WH_FULL_AR {
  name = "PROD_REPORTING_WH_WH_FULL_AR"
}

resource snowflake_database_grant grant_usage_on_prod_ap_pl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  privilege = "USAGE"
  roles = ["PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR", "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR", "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR", "PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_database_grant grant_usage_on_prod_ap_rl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  privilege = "USAGE"
  roles = ["PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR", "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR", "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR", "PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_database_grant grant_usage_on_prod_ap_sl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  privilege = "USAGE"
  roles = ["PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR", "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR", "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR", "PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR"]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_usage_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_pl_dc_db_db_bankcore_extract_dna_r_ar_grants,snowflake_role_grants.role_prod_ap_pl_dc_db_db_bankcore_extract_dna_rw_ar_grants,snowflake_role_grants.role_prod_ap_pl_dc_db_db_bankcore_extract_dna_full_ar_grants,snowflake_role_grants.role_prod_ap_pl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_pl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_usage_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_rl_dc_db_db_bankcore_extract_dna_r_ar_grants,snowflake_role_grants.role_prod_ap_rl_dc_db_db_bankcore_extract_dna_rw_ar_grants,snowflake_role_grants.role_prod_ap_rl_dc_db_db_bankcore_extract_dna_full_ar_grants,snowflake_role_grants.role_prod_ap_rl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_rl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_usage_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_sl_dc_db_db_bankcore_extract_dna_r_ar_grants,snowflake_role_grants.role_prod_ap_sl_dc_db_db_bankcore_extract_dna_rw_ar_grants,snowflake_role_grants.role_prod_ap_sl_dc_db_db_bankcore_extract_dna_full_ar_grants,snowflake_role_grants.role_prod_ap_sl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_schema_grant grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  depends_on = [snowflake_role_grants.role_prod_ap_sl_dc_db_db_bankcore_extract_dna_full_ar_grants]

  with_grant_option = false
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_select_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_INSERT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_UPDATE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_DELETE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_REFERENCES_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_insert_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_update_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_delete_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_references_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_select_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_INSERT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_UPDATE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_DELETE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_REFERENCES_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_insert_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_update_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_delete_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_references_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_select_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_INSERT_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_UPDATE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_DELETE_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_REFERENCES_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_insert_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "INSERT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_update_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "UPDATE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_delete_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "DELETE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_table_grant grant_references_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "REFERENCES"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_tables" {
  source = "./modules/snowflake-grant-all-current-tables"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_table_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tables {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_select_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_select_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_select_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_views" {
  source = "./modules/snowflake-grant-all-current-views"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_view_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_views {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_sequences" {
  source = "./modules/snowflake-grant-all-current-sequences"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_sequence_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_sequences {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_READ_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "READ"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_read_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "READ"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_write_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_stage_grant.grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages, snowflake_stage_grant.grant_read_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_WRITE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_READ_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "READ"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_read_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "READ"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_write_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_stage_grant.grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages, snowflake_stage_grant.grant_read_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_WRITE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_READ_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "READ"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_read_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "READ"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_stage_grant grant_write_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_stage_grant.grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages, snowflake_stage_grant.grant_read_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_WRITE_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "WRITE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_stages" {
  source = "./modules/snowflake-grant-all-current-stages"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stage_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_stages {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_file-formats" {
  source = "./modules/snowflake-grant-all-current-file-formats"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_file_format_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_file_formats {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_select_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_select_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_SELECT_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_select_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "SELECT"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_streams" {
  source = "./modules/snowflake-grant-all-current-streams"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_stream_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_streams {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_procedures" {
  source = "./modules/snowflake-grant-all-current-procedures"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_procedure_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_procedures {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_usage_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_ownership_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_usage_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_ownership_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_USAGE_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_usage_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "USAGE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OWNERSHIP_on_current_functions" {
  source = "./modules/snowflake-grant-all-current-functions"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_function_grant grant_ownership_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_functions {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_MONITOR_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OPERATE_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_task_grant grant_monitor_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_task_grant grant_operate_on_future_prod_ap_pl_dc_db_db_prod_ap_pl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_PL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_pl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_MONITOR_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OPERATE_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_task_grant grant_monitor_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_task_grant grant_operate_on_future_prod_ap_rl_dc_db_db_prod_ap_rl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_RL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_rl_dc_db_db_bankcore_extract_dna_schema]
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_MONITOR_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

module "PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA_grant_OPERATE_on_current_tasks" {
  source = "./modules/snowflake-grant-all-current-tasks"
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name
  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]
  enable_multiple_grants = true
}

resource snowflake_task_grant grant_monitor_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "MONITOR"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_task_grant grant_operate_on_future_prod_ap_sl_dc_db_db_prod_ap_sl_dc_db_db__bankcore_extract_dna_tasks {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  schema_name = snowflake_schema.PROD_AP_SL_DC_DB_DB__BANKCORE_EXTRACT_DNA.name

  privilege = "OPERATE"
  roles = [snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name, snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name]

  on_future = true
  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_schema_grant.grant_ownership_on_prod_ap_sl_dc_db_db_bankcore_extract_dna_schema]
}

resource snowflake_warehouse_grant grant_usage_on_warehouse_prod_datascience_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_DATASCIENCE_WH_WH.name
  privilege = "USAGE"

  roles = [snowflake_role.PROD_DATASCIENCE_WH_WH_U_AR.name, snowflake_role.PROD_DATASCIENCE_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_monitor_on_warehouse_prod_datascience_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_DATASCIENCE_WH_WH.name
  privilege = "MONITOR"

  roles = [snowflake_role.PROD_DATASCIENCE_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_ownership_on_warehouse_prod_datascience_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_DATASCIENCE_WH_WH.name
  privilege = "OWNERSHIP"

  roles = [snowflake_role.PROD_DATASCIENCE_WH_WH_FULL_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_usage_on_warehouse_prod_etl_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_ETL_WH_WH.name
  privilege = "USAGE"

  roles = [snowflake_role.PROD_ETL_WH_WH_U_AR.name, snowflake_role.PROD_ETL_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_monitor_on_warehouse_prod_etl_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_ETL_WH_WH.name
  privilege = "MONITOR"

  roles = [snowflake_role.PROD_ETL_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_ownership_on_warehouse_prod_etl_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_ETL_WH_WH.name
  privilege = "OWNERSHIP"

  roles = [snowflake_role.PROD_ETL_WH_WH_FULL_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_usage_on_warehouse_prod_reporting_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_REPORTING_WH_WH.name
  privilege = "USAGE"

  roles = [snowflake_role.PROD_REPORTING_WH_WH_U_AR.name, snowflake_role.PROD_REPORTING_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_monitor_on_warehouse_prod_reporting_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_REPORTING_WH_WH.name
  privilege = "MONITOR"

  roles = [snowflake_role.PROD_REPORTING_WH_WH_UM_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_warehouse_grant grant_ownership_on_warehouse_prod_reporting_wh_wh {
  warehouse_name = snowflake_warehouse.PROD_REPORTING_WH_WH.name
  privilege = "OWNERSHIP"

  roles = [snowflake_role.PROD_REPORTING_WH_WH_FULL_AR.name]

  with_grant_option = false
  enable_multiple_grants = true
}

resource snowflake_role_grants role_prod_ap_pl_dc_db_db_bankcore_extract_dna_r_ar_grants {
  role_name = snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_ANALYST_FR.name,
    snowflake_role.PROD_REPORTING_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_pl_dc_db_db_bankcore_extract_dna_rw_ar_grants {
  role_name = snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_DEVELOPER_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_pl_dc_db_db_bankcore_extract_dna_full_ar_grants {
  role_name = snowflake_role.PROD_AP_PL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SERVICE_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_rl_dc_db_db_bankcore_extract_dna_r_ar_grants {
  role_name = snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_ANALYST_FR.name,
    snowflake_role.PROD_REPORTING_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_rl_dc_db_db_bankcore_extract_dna_rw_ar_grants {
  role_name = snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_DEVELOPER_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_rl_dc_db_db_bankcore_extract_dna_full_ar_grants {
  role_name = snowflake_role.PROD_AP_RL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SERVICE_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_sl_dc_db_db_bankcore_extract_dna_r_ar_grants {
  role_name = snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_R_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_ANALYST_FR.name,
    snowflake_role.PROD_REPORTING_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_sl_dc_db_db_bankcore_extract_dna_rw_ar_grants {
  role_name = snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_RW_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_DEVELOPER_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_ap_sl_dc_db_db_bankcore_extract_dna_full_ar_grants {
  role_name = snowflake_role.PROD_AP_SL_DC_DB_DB_BANKCORE_EXTRACT_DNA_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SERVICE_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_datascience_wh_wh_u_ar_grants {
  role_name = snowflake_role.PROD_DATASCIENCE_WH_WH_U_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_ANALYST_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_datascience_wh_wh_um_ar_grants {
  role_name = snowflake_role.PROD_DATASCIENCE_WH_WH_UM_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_datascience_wh_wh_full_ar_grants {
  role_name = snowflake_role.PROD_DATASCIENCE_WH_WH_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_etl_wh_wh_u_ar_grants {
  role_name = snowflake_role.PROD_ETL_WH_WH_U_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_DEVELOPER_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_etl_wh_wh_um_ar_grants {
  role_name = snowflake_role.PROD_ETL_WH_WH_UM_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_etl_wh_wh_full_ar_grants {
  role_name = snowflake_role.PROD_ETL_WH_WH_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SERVICE_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_reporting_wh_wh_u_ar_grants {
  role_name = snowflake_role.PROD_REPORTING_WH_WH_U_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_REPORTING_FR.name,
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_reporting_wh_wh_um_ar_grants {
  role_name = snowflake_role.PROD_REPORTING_WH_WH_UM_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role_grants role_prod_reporting_wh_wh_full_ar_grants {
  role_name = snowflake_role.PROD_REPORTING_WH_WH_FULL_AR.name

  enable_multiple_grants = true
  roles = [
    snowflake_role.PROD_SYSADMIN.name,
  ]
}

resource snowflake_role PROD_SYSADMIN {
  name = "PROD_SYSADMIN"
}

resource snowflake_role_grants role_prod_sysadmin_grants {
  role_name = snowflake_role.PROD_SYSADMIN.name

  enable_multiple_grants = true
  roles = [
    "SYSADMIN",
  ]
}

resource snowflake_database_grant grant_ownership_on_prod_ap_pl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_PL_DC_DB_DB.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_SYSADMIN.name]

  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_role_grants.role_prod_sysadmin_grants]
}

resource snowflake_database_grant grant_ownership_on_prod_ap_rl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_RL_DC_DB_DB.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_SYSADMIN.name]

  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_role_grants.role_prod_sysadmin_grants]
}

resource snowflake_database_grant grant_ownership_on_prod_ap_sl_dc_db_db_database {
  database_name = snowflake_database.PROD_AP_SL_DC_DB_DB.name
  privilege = "OWNERSHIP"
  roles = [snowflake_role.PROD_SYSADMIN.name]

  with_grant_option = false
  enable_multiple_grants = true
  depends_on = [snowflake_role_grants.role_prod_sysadmin_grants]
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