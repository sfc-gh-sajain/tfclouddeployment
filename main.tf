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

resource "snowflake_database" "PROD_AP_PL_DC_DB_DB" {
  name = "PROD_AP_PL_DC_DB_DB"
  is_transient = false
}

resource "snowflake_database" "PROD_AP_RL_DC_DB_DB" {
  name = "PROD_AP_RL_DC_DB_DB"
  is_transient = false
}
