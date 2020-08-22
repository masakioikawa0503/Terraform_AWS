# Terraform_AWS
AWS Resources are created with Terraform 

TerraformでAWS CloudformationのようにAWSの環境構築を試験的に行いました。

[作成したリソース]
・VPC×1
・Subnet×1
・IGW×1
・セキュリティグループ×1
・EC2×1

注意；
初期化「terraform destroy」したので、 terraform.tfstateの中身が初期化されている。

terraform init
terraform plan
terraform applyの順に実行する際はお願いします。
