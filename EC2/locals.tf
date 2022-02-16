locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  cammon_tags = {
    Project = "Treinamento Terraform"
    Owner   = "Flavio Gutierrez"
  }
}