#########################
### Default variables ###
#########################
variable "region" {
  type = string
}

variable "infra_provider" {
  type = string
}

variable "owner" {
  type = string
}

variable "environment" {
  type = string
}

variable "project_application" {
  type = string
}

variable "ressource_name" {
  type = string
}

variable "unique_id" {
  type = string
}

########################
### Module variables ###
########################
variable "aws_subnet_id" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "private_ip" {
  type = string
}

variable "aws_key_name" {
  type = string
}

variable "aws_iam_instance_profile" {
  type = string
  default = null
}

variable "security_group_ec2" {
 type = list
}

variable "aws_efs_file_system_dns_name" {
  type = string
  default = null
}

variable "root_volume_size" {
  type = string
}

variable "root_volume_type" {
  type = string
}

variable "disable_api_termination" {
  type = string
}

variable "user_data" {
  type = string
  default = "default.sh"
}