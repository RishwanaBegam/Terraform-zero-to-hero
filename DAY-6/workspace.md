workspace commands:-

terraform workspace new (ENV)
terraform workspace new dev

terraform workspace select (ENV)
terraform workspace select (dev)

terraform workspace show



terraform apply -var-file=dev.tfvars
terraform apply -var-file=stage.tfvars
terraform apply -var-file=prod.tfvars
