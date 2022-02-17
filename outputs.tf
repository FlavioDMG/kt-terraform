output "Nome_da_AMI_utilizado" {
  value = aws_instance.ec2.id
}

output "Meu_numero_do_IP_publico_criado_na_EC2" {
  value = aws_instance.ec2.public_ip
}

output "Utilizei_esta_instancia" {
  value = aws_instance.ec2.instance_type
}

output "Nome_da_minha_VPC" {
  value = aws_vpc.this.id
}

output "Nome_da_minha_Segurity_Group" {
  value = aws_security_group.ec2sg.id
}

output "Nome_da_minha_Internet_Gateway" {
  value = aws_internet_gateway.this.id
}

output "Nome_da_tabela_publico" {
  value = aws_route_table.public.id
}

output "Criado_3_subnet_para_cada_AZ" {
  value = local.subnet_ids
}

output "Criando_uma_tabela_de_roteamento_na_subrede" {
  value = [for k, v in aws_route_table_association.this : v.id]
}
