# aws-vpc

🏗️📦☁️ Repositório da aula de VPC do curso Arquitetura de Containers na AWS da LINUXTips - ministrado pelo [Matheus Fidelis](https://github.com/msfidelis)

## Programas necessários

Para desenvolver o projeto, é necessário instalar o [Terraform Switcher](https://tfswitch.warrensbox.com/Install/) e o [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html).

## Usuário na AWS

Criação do usuário na aws com acesso de admin na conta e geração das keys de acesso a conta.

## O que foi desenvolvido

O primeiro passo do projeto foi a criação de uma **VPC**. Em seguida definimos as sbnets privadas, publicas e databases. Como configuração adicional, desenvolvemos a internet gatway, nat gateway e routing table.

## Terraform

Para padronizar a identação dos arquivos terraform, rodar o comando:

```bash
terraform fmt --recursive
```

Aplicar alterações:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Para excluir algum serviço criado:

```bash
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars
```

## Utilitários

README modelo: [Repositório do Alex Soares](https://github.com/So4resAlex/aws-containers-vpc)
