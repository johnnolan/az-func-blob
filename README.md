


## Getting Setup Guidance

(https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=azure-powershell)[https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell-bash?tabs=azure-powershell]

## Terraform

### Create

`terraform plan -out main.tfplan`

`terraform apply main.tfplan`

### Verify

`$resource_group_name=$(terraform output -raw resource_group_name)`

`Get-AzResourceGroup -Name $resource_group_name`

### Destroy

`terraform plan -destroy -out main.destroy.tfplan`

`terraform apply main.destroy.tfplan`
