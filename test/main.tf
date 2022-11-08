# environment specific local variables
locals {
  environment = "test"
  project     = "JJB Project Modularization"
  app_name    = "erp"
}

module "main" {
  source = "git@github.com:jjbos/modularization-module.git?ref=1.0.0"

  environment        = local.environment
  app_name           = local.app_name

  # sizing
  ec2_type_app              = "t3.nano"
  asg_app_min_size          = 1
  asg_app_max_size          = 1
  asg_app_desired_cappacity = 1
}