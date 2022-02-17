# Treinamento: AWS com Terraform.

- O Terraform é uma das ferramentas de infraestrutura muito popular e um dos produtos da HashiCorp.

- Base de consulta:
  1. (provider-aws) https://registry.terraform.io/providers/hashicorp/aws/latest/docs
  2. (Language Documentation) https://www.terraform.io/language

### Lição Aprendida:

- Criação de Modulos, por exemplo:
````
main.tf
variables.tf
outputs.tf, etc.
````
- Criação de Parâmetros, por exemplo:
```` resource "aws_instance" "Teste" {
     ami = var.inst_ami
     instance_type = var.inst_type
     key_name = var.inst_key
     tags = var.tags
     }
````
- Como declarar nas instancia, por exemplo:
````
 instance_type = "t2.micro" {}
````
- Como declarar nas variáveis, por exemplo:
````
variable "inst_ami" {}
````
- Sei que nosso arquivo "MAIN.TF" e uma raiz do projeto aonde carregam seus moulos e repassar as variáveis.
- Utilize referências e dependências entre os recursos
- Instalação de um serviço web "NGINX".

### Comando Utilizado no Terraform:

- terraform init : baixa os plugins necessários para executar o código.
- terraform plan : mostra o plano de ação que o Terraform irá realizar na infra.
- terraform apply: executa todo o plano de ação configurado e aplicar no AWS.
- terraform destroy: irá destruir tudo que foi aplicado no provider da AWS.

### Pré requisitos

- Noções básicas de programação;
- Aplicativo Terraform;
- Aplicativo AWS CLI para Configurar suas credenciais;
- Conta na AWS.
