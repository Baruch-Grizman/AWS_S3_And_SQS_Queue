# AWS S3 And SQS Queue  
  
Creating a Terraform resource definition for aws s3 bucket and sqs queue then let the bucket notify the queue
  
## Task Description  
### An explanation of the various files in the project
  
```  
AWS_S3_And_SQS_Queue/  
│  
├── commands.txt   
├── main.tf
├── notification.tf
├── providers.tf
├── variables.tf   
└── README.md  
```   
commands.txt\
List of commands for execution

main.tf\
Creating the `S3 Bucket` & A network access control list (`ACL`)

notification.tf\
Creating the `S3 Queue` (with policy) and `Bucket Notification`

providers.tf\
Setting up the `AWS Provider` with Terraform

variables.tf\
List of variables to be using in other Resources
  
README.md
This is a `Markdown` file documenting the purpose and usage of our project
  
## # Resources
[How to Create AWS S3 Bucket using Terraform (bacancytechnology.com)](https://www.bacancytechnology.com/blog/aws-s3-bucket-using-terraform)

[aws_s3_bucket | Resources | hashicorp/aws | Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)

[aws_s3_bucket_notification | Resources | hashicorp/aws | Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification#add-notification-configuration-to-sqs-queue)

[aws_sqs_queue | Resources | hashicorp/aws | Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue)

[aws_iam_policy | Resources | hashicorp/aws | Terraform Registry](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy)

[AWS IAM Policies and Policy Structure (hava.io)](https://www.hava.io/blog/aws-iam-policies-and-policy-structure)

