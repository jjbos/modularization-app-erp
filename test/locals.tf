locals {
  mandatory_tags = {
    "environment" = local.environment
    "project"     = local.project
    "application" = local.app_name
  }
}
