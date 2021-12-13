## Step-07: Terraform State Locking Introduction
- Understand about Terraform State Locking Advantages

## Step-08: Add State Locking Feature using DynamoDB Table
- Create Dynamo DB Table
  - **Table Name:** terraform-dev-state-table
  - **Partition key (Primary Key):** LockID (Type as String)
  - **Table settings:** Use default settings (checked)
  - Click on **Create**

## Step-09: Update DynamoDB Table entry in backend in c1-versions.tf
- Enable State Locking in `c1-versions.tf`
```t
  # Adding Backend as S3 for Remote State Storage with State Locking
  backend "s3" {
    bucket = "terraform-s3-bucket-name"
    key    = "dev2/terraform.tfstate"
    region = "us-east-1"  

    # For State Locking
    dynamodb_table = "terraform-dev-state-table"
  }
```

## Step-10: Execute Terraform Commands
```t
# Initialize Terraform 
terraform init

# Review the terraform plan
terraform plan 
Observation: 
1) Below messages displayed at start and end of command
Acquiring state lock. This may take a few moments...
Releasing state lock. This may take a few moments...
2) Verify DynamoDB Table -> Items tab

# Create Resources 
terraform apply -auto-approve

# Verify S3 Bucket for terraform.tfstate file
bucket-name/dev2/terraform.tfstate
Observation: New version of terraform.tfstate file will be created in dev2 folder
```

## Step-11: Destroy Resources
- Destroy Resources and Verify Bucket Versioning
```t
# Destroy Resources
terraform destroy -auto-approve
