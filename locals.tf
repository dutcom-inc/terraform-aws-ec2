locals {
  name = "${var.infra_provider}-${var.client}-${var.application_domain}${var.environment}-${var.ressource_type}-${var.ressource_name}"
  common_tags = {
    "Name"                            = local.name
    "application:cloud_environment"   = "${var.infra_provider}-${var.client}"
    "application:environment"         = "${var.application_domain}${var.environment}"
    "managed_by"                      = "Terraform"
  }
}