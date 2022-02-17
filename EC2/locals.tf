locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  cammon_tags = {
    Project = "RegraEntrada porta 80 e 22, RegraSaida tudo"
    Owner   = "Flavio Gutierrez"
  }
}