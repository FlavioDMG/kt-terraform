terraform {
  required_version = "1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }
  }

  backend "s3" {
    bucket = "fdmg-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ec2" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = "fdmg_rsa"
  subnet_id                   = aws_subnet.this["subnet_a"].id
  vpc_security_group_ids      = [aws_security_group.ec2sg.id]
  associate_public_ip_address = true

  user_data = file("install_nginx.sh")

  tags = var.instance_tags
}

#TERRAFORM: Versão do providers.
#BACKEND: Criando meu primeiro bucket.
#PROVIDER: Estou setando nome da região "US-EAST-1" como padrão.
#RESOURCE: Criando meu EC2 e adicionando dados da rede subnet, security group e associando a rede publica.
#ACESSAR_SERVIDOR_CRIADO: digitar no cmd ou gitbash "ssh ec2-user@54.80.53.179", digitar "sudo su systemctl status nginx" para verificar o serviço ativo.