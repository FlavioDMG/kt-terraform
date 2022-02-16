output "AMI_com_NGINX_id" {
  value = aws_instance.ec2.id
}

output "ip_address" {
  value = aws_instance.ec2.public_ip
}

output "VPC_id" {
  value = aws_vpc.this.id
}

output "Internet_Gateway_id" {
  value = aws_internet_gateway.this.id
}

output "Subnet_ids" {
  value = local.subnet_ids
}

output "route_table_assossiation_ids" {
  value = [for k, v in aws_route_table_association.this : v.id]
}

output "Segurity_Group_id" {
  value = aws_security_group.ec2sg.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

#VPC_id: Mostrar ID da VPC.
#Internet_Gateway_id: Mostrar ID da Internet Gateway
#Subnet_ids: Mostrar ID da Subnet.
#route_table_assossiation_ids: Mostrar ID da Subnet da rede A, B, C.
#Segurity_Group_id: Mostrar ID da Security Group.
#AMI_com_NGINX_id: Mostrar ID da AMI.
