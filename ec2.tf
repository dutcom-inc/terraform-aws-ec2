resource "aws_instance" "default" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.aws_subnet_id
    key_name = var.aws_key_name
    iam_instance_profile = var.aws_iam_instance_profile
    private_ip = var.private_ip
    vpc_security_group_ids = var.security_group_ec2
    disable_api_termination = var.disable_api_termination
    user_data = templatefile("${path.module}/user_data/${var.user_data}", {
    })

    private_dns_name_options {
      enable_resource_name_dns_a_record = true
    }

    root_block_device {
        volume_size           = var.root_volume_size
        volume_type           = var.root_volume_type
        encrypted             = true
        delete_on_termination = true
        tags = {
            "Name"    = "ebs-root-${var.ressource_name}-${var.unique_id}-${var.environment}"
        }
    }
  tags = merge(
    local.common_tags
  )

  provisioner "local-exec" {
    command = "aws ec2 create-tags --resources ${aws_instance.ec2.primary_network_interface_id} --tags Key=Name,Value='${var.infra_provider}-${var.owner}-${var.project_application}${var.environment}-eni-${var.ressource_name}'"
  }

}