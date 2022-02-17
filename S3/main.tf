terraform {
  required_version = "1.1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "fdmg-bucket"

  force_destroy = true

  versioning {
    enabled = true
  }

  tags = {
    Name = "Meu Bucket para Repositorio"
  }
}

resource "aws_s3_bucket_public_access_block" "bloquearpublico" {
  bucket              = aws_s3_bucket.bucket.id
  block_public_acls   = true
  block_public_policy = true
}

#TERRAFORM: Versão do providers.
#PROVIDER: Estou setando nome da região "US-EAST-1" como padrão.
#aws_s3_bucket: criando Regra para versionar.
#aws_s3_bucket_public_access_block: bloqueando acesso publico no bucket.