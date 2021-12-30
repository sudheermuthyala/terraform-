# Terraform Cloud & Github Integration

## Step-01: Introduction
- Create Github Repository on github.com
- Clone Github Repository to local desktop
- Copy & Check-In Terraform Configurations in to Github Repository
- Create Terraform Cloud Account
- Create Organization
- Create Workspace by integrating with Github.com Git Repo we recently created
- Learn about Workspace related Queue Plan, Runs, States, Variables and Settings


## Step-02: Create new github Repository
- **URL:** github.com
- Click on **Create a new repository**
- **Repository Name:** terraform-cloud-demo1
- **Description:** Terraform Cloud Demo 
- **Repo Type:** Public / Private
- **Initialize this repository with:**
- **CHECK** - Add a README file
- **CHECK** - Add .gitignore 
- **Select .gitignore Template:** Terraform
- **CHECK** - Choose a license
- **Select License:** Apache 2.0 License
- Click on **Create repository**

## Step-03: Review .gitignore created for Terraform
- Review .gitignore created for Terraform projects

## Step-04: Clone Github Repository to Local Desktop
```t
# Clone Github Repo
git clone https://github.com/<YOUR_GITHUB_ID>/<YOUR_REPO>.git
git clone https://github.com/sudheermuthyala/terraform-cloud.git
```

## Step-05: Copy files from terraform-manifests to local repo & Check-In Code
- List of files to be copied
  - apache-install.sh
  - c1-versions.tf
  - c2-variables.tf
  - c3-security-groups.tf
  - c4-ec2-instance.tf
  - c5-outputs.tf
  - c6-ami-datasource.tf
- Source Location: Section-11-01 - Inside terraform-manifests folder
- Destination Location: Newly cloned github repository folder in your local desktop `terraform-cloud-demo1`
- Verify locally before commiting to GIT Repository
# Verify the same on Remote Repository
[Remote Repository](https://github.com/sudheermuthyala/terraform-cloud)

```t
# Terraform Init
terraform init

# Terraform Validate
terraform validate

# Terraform Plan
terraform plan
```
- Check-In code to Remote Repository
```t
# GIT Status
git status

# Git Local Commit
git add .
git commit -am "TF Files First Commit"

# Push to Remote Repository
git push
```

