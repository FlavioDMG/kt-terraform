resource "aws_key_pair" "chave_rsa" {
  key_name   = "fdmg_rsa"
  public_key = file("/C:/Users/PC/.ssh/id_rsa.pub")
}

#KEY_NAME: Colocar o mesmo nome do"key_name" cadastrado no EC2 da estrutura "MAIN".
#PUBLIC_KEY: Digitar no cmd "ssh-keygen" para obter a chave.