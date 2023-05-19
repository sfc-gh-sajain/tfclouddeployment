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