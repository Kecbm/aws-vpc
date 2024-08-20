# aws-vpc

🏗️📦☁️ Repositório da aula de VPC do curso Arquitetura de Containers na AWS da LINUXTips

## Programas necessários

Listar os programas necessários antes de começar a desenvolver o projeto

## Usuário na AWS

Passo a passo da criação do usuário na aws e geração das keys de acesso a conta

## VPC

Depois de configurar os arquivos: `variables.tf`, `providers.tf`, `backend.tf` e as variáveis da pasta `environment/dev`, deve executar o seguinte comando:

```bash
terraform init -backend-config=environment/dev/backend.tfvars
```

Depois de configurar o arquivo `vpc.tf`, executar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Após essa etapa, verificar o recurso criado na parte de **VPC** na conta da **AWS**.

## Subnets

### Subnets Privadas

Para iniciar as configurações das subnets, é necessário criar o arquivo `private_subnets.tf`. Após essa etapa, rodar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Depois de rodar o comando, verificar se as **subnets** foram criadas na **AWS**.

### Subnets Públicas

Seguir os mesmos passos utilizados na criação das subnets privadas. Antes de rodar o comando de criação do terraform, alterar o nome, tags e `cidr_block`.

### Subnets Databases

Seguir os mesmos passos utilizados na criação das subnets privadas. Antes de rodar o comando de criação do terraform, alterar o nome, tags e `cidr_block`.

## Configurações adicionais

### Subnets Publicas

Para tornar a subnet publica, é necessário configurar:

#### Internet Gateway

Criar o arquivo `internet_gateway.tf`.

Executar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Depois de rodar o comando, verificar se a **internet gateway** foi criada na **AWS**.

#### NAT Gateway

Criar o arquivo `net_gateway.tf`.

Executar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Depois de rodar o comando, verificar se a **NAT gateway** foi criada na **AWS**.

#### Routing Table

Associar uma subnet a uma internet gateway.

Acessar o arquivo `public_subnets.tf` e adicionar novos blocos: 

```terraform
resource "aws_route_table" "public_internet_access" {}
```

```terraform
resource "aws_route" "public_access" {}
```

Executar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Adicionar os blocos para a, b e c:

```terraform
resource "aws_route_table_association" "public_1a" {}
```

Executar o comando:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Depois de rodar o comando, verificar a seção **Route tables** na **AWS**.

### Subnets Privadas

## Terraform

Para padronizar a identação dos arquivos terraform, rodar o comando:

```bash
terraform fmt --recursive
```

Para excluir subnets criadas:

```bash
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars
```

## Utilitários

README modelo: [Repositório do Alex Soares](https://github.com/So4resAlex/aws-containers-vpc)
