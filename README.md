# aws-vpc

🏗️📦☁️ Repositório da aula de VPC do curso Arquitetura de Containers na AWS da LINUXTips

# VPC

Depois de configurar os arquivos: `variables.tf`, `providers.tf`, `backend.tf` e as variáveis da pasta `environment/dev`, deve executar o seguinte comando:

```bash
terraform init -backend-config=environment/dev/backend.tfvars
```

Depois de configurar o arquivo `vpc.tf`, executar o comando:

```bash
terraform init
terraform apply --auto-approve -var-file=environment/dev/terraform.tfvars
```

Após essa etapa, verificar o recurso criado na parte de **VPC** na conta da **AWS**.
