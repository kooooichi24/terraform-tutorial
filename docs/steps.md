# Steps of the project

```bash
$ anyenv update
$ anyenv install tfenv
$ tfenv
$ tfenv list-remote
$ tfenv install 1.6.4
$ tfenv list
$ tfenv use 1.6.4
$ terraform -help  
```

install VSCode extention: [HashiCorp Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

```bash
$ terraform init
$ terraform plan
$ terraform apply
$ terraform destroy
```

```bash
# Install the Azure CLI tool
$ brew update && brew install azure-cli

# Authenticate using the Azure CLI
$ az login

# Once you have chosen the account subscription ID, set the account with the Azure CLI.
$ az account set --subscription "35akss-subscription-id"

# Set your environment variables
$ export ARM_CLIENT_ID="<APPID_VALUE>"
$ export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
$ export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
$ export ARM_TENANT_ID="<TENANT_VALUE>"
```


https://github.com/github/gitignore/blob/main/Terraform.gitignore