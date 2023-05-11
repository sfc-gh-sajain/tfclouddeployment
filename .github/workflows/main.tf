terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
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