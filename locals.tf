locals {
  name = "${var.infra_provider}-${var.owner}-${var.project_application}${var.environment}-ec2-${var.ressource_name}"
  common_tags = {
    "Name"                            = local.name
    "application:cloud_environment"   = "${var.infra_provider}-${var.owner}"
    "application:environment"         = "${var.project_application}${var.environment}"
    "managed_by"                      = "Terraform"
  }
}