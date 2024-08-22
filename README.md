# aws-vpc

🏗️📦☁️ Repositório da aula de VPC do curso Arquitetura de Containers na AWS da LINUXTips - ministrado pelo [Matheus Fidelis](https://github.com/msfidelis)

Este repositório contém os arquivos de configuração Terraform para a criação e gerenciamento de uma `VPC` na `AWS`, desenvolvidos durante o day-1 do curso.

<br>

---

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes programas instalados:

- [Terraform Switcher (tfswitch)](https://tfswitch.warrensbox.com/Install/): Facilita a alternância entre diferentes versões do Terraform.
- [AWS CLI](https://docs.aws.amazon.com/pt_br/cli/latest/userguide/getting-started-install.html): Interface de linha de comando para gerenciar os serviços da AWS.

<br>

## Configuração do Usuário AWS

<ol>
    <li><b>Criação do Usuário AWS:</b> Crie um usuário com permissões de administrador na conta AWS.</li>
    <li><b>Geração das Credenciais:</b> Gere as chaves de acesso (Access Key ID e Secret Access Key) para configurar a CLI e permitir que o Terraform interaja com a AWS.</li>
</ol>

<br>

## Configuração do Ambiente

Antes de executar o **Terraform**, você precisa configurar os arquivos de variáveis específicas do ambiente. Para isso, copie o arquivo `terraform.tfvars.example` e cole na pasta renomeando para `terraform.tfvars`. Em seguida preencha os campos com as informações necessárias.

Siga o mesmo procedimento para o arquivo `backend.tfvars.example` e gere o arquivo `backend.tfvars` com as informações necessárias.

<br>

---

## Estrutura Desenvolvida

O projeto foi desenvolvido para implementar uma infraestrutura de rede segura e escalável na `AWS`, utilizando o `Terraform`. A estrutura abrange:

<ul>
    <li><b>VPC:</b> Virtual Private Cloud que isola os recursos de rede;</li>
    <li><b>Subnets:</b> Subnets privadas e públicas para separar o tráfego e aumentar a segurança;</li>
    <li><b>Internet Gateway:</b> Permite a comunicação entre a VPC e a Internet;</li>
    <li><b>NAT Gateway:</b> Proporciona acesso à Internet para instâncias nas subnets privadas;</li>
    <li><b>Routing Tables:</b> Define o roteamento dentro da VPC;</li>
    <li><b>Parameter Store:</b> Armazenamento seguro de parâmetros de configuração, como segredos e variáveis sensíveis;</li>
    <li><b>Outputs:</b> Exposição dos valores importantes após a execução do Terraform, como IDs de VPC, Subnets, etc.</li>
</ul>

<br>

![VPC](docs/vpc.png)

> Imagem copiada do [Repositório do Alex Soares](https://github.com/So4resAlex/aws-containers-vpc).

Após a criação de cada recurso, é recomendável acessar a `AWS Management Console` para verificar se os recursos foram configurados corretamente.

<br>

---

## Tecnologias utilizadas

<ul>
    <li><b>AWS:</b> Plataforma de serviços em nuvem utilizada para hospedar a VPC e os demais recursos;</li>
    <li><b>Terraform:</b> Ferramenta de IaC (Infrastructure as Code) usada para automatizar a criação e gestão da infraestrutura.</li>
</ul>

<div>
<img title="AWS" alt="AWS" height="80" width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" /> <img title="Terraform" alt="Terraform" height="80" width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/terraform/terraform-original.svg" />
</div>

<br>

---

## Terraform

### Formatação do Código

Para padronizar a indentação dos arquivos Terraform, execute:

```bash
terraform fmt --recursive
```

### Deploy da Infraestrutura

Para aplicar as configurações e criar os recursos na AWS, use:

```bash
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

### Destruição da Infraestrutura

Se precisar excluir os recursos criados, execute:

```bash
terraform destroy --auto-approve -var-file=environment/dev/terraform.tfvars
```

<br>

---

<p align="center">Projeto desenvolvido por <a href="https://www.linkedin.com/in/kecbm/">Klecianny Melo</a> 😁</p>

