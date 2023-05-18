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