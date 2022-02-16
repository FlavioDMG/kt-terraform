# Treinamento: AWS com Terraform Automatizando sua infraestrutura

- O Terraform é uma das ferramentas de infraestrutura muito popular e um dos produtos da HashiCorp.
- 
- Base de consulta:
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs (provider-aws)
  https://www.terraform.io/language (Language Documentation)

### Lição Aprendida:

- Criação de Modulos, por exemplo:
    main.tf, variables.tf, outputs.tf, etc.
  
- Criação de Parâmetros, por exemplo:
    resource "aws_instance" "Teste" {
    ami = var.inst_ami
    instance_type = var.inst_type
    key_name = var.inst_key
    tags = var.tags
    }

- Como declarar nas variáveis, por exemplo:
    variable "inst_ami" {
    type = "string"
    }

- Sei que nosso arquivo "MAIN.TF" e uma raiz do projeto aonde carregam seus moulos e repassar as variáveis.

- Aprendir como instalar um NGINX (software de codigo aberto para serviço da web, e muito mais.).

- Utilizei o site "registry.terraform" e "terraform.io" para obter informações da criação do projeto.

### Comando Utilizado:

- terraform init : baixa os plugins necessários para executar o código.
- terraform plan : mostra o plano de ação que o Terraform irá realizar na infra.
- terraform apply: executa todo o plano de ação configurado e aplicar no AWS.
- terraform destroy: irá destruir tudo que foi aplicado no provider da AWS.

### Pré requisitos

- Noções básicas de programação;
- Instalar Aplicativo Terraform;
- Instalar Aplicativo AWS CLI para Configurar suas credenciais;
- Criação de Usuário na AWS.

### Para quem é o curso

- Quem quer aprender Terraform e automatizar o processo de criação e manutenção da infraestrutura de suas aplicações.
