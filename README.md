# terraform
Repository for Terraform scripts used for spinning up HealthHub Infrastructure Resources

## Setup
Steps to run Terraform locally
1. Install Homebrew on your mac - https://brew.sh/
2. Download Terraform on your mac - `brew install terraform`
3. Download Accesskey and SecretKey from your IAM user from AWS Console
4. Export them as Environment variables
5. `export AWS_ACCESS_KEY_ID="<your access key id>"` 
6. `export AWS_SECRET_ACCESS_KEY="<your secret access key>"` 
7. Clone this git repo onto your mac 
  i. Setup mac for git ssh access - https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh
  ii. `git clone git@github.com:HealthHubPlatform/terraform.git`
8. Run the terraform initialization command `terraform init`
9. Run terraform plan command to see what changes it will be perform `terraform plan`
10. Apply the terraform changes by running the command `terraform apply` and type `yes` when it prompts to apply the changes
