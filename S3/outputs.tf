output "Criamos_um_bucket_para_armazenar_nosso_tfstate" {
  value = aws_s3_bucket.bucket.id
}

output "Ativamos_bloqueio_de_acesso_ao_nosso_repositorio_publico" {
  value = aws_s3_bucket_public_access_block.bloquearpublico.block_public_policy
}