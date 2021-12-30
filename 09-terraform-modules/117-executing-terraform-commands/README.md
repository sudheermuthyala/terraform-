## Execute Terraform Commands & Verify the bucket
```t
# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform Format
terraform fmt

# Terraform Plan
terraform plan

# Terraform Apply
terraform apply -auto-approve

# Verify 
1. Bucket has static website hosting enabled
2. Bucket has public read access enabled using policy
3. Bucket has "Block all public access" unchecked
```
## Upload index.html and test
```t
# Endpoint Format
http://example-bucket.s3-website.Region.amazonaws.com/

# Replace Values (Bucket Name, Region)
http://mybucket-1046.s3-website.us-east-1.amazonaws.com/
```

```t
# Terraform Destroy
terraform destroy -auto-approve

# Delete Terraform files 
rm -rf .terraform*
rm -rf terraform.tfstate*
```

## Conclusion
