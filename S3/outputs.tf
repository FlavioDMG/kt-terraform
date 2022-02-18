output "Criado_um_bucket_para_armazenar_meu_tfstate" {
  value = aws_s3_bucket.bucket.id
}

output "Ativado_bloqueio_de_acesso_para_publico_ao_meu_repositorio" {
  value = aws_s3_bucket_public_access_block.bloquearpublico.block_public_policy
}
