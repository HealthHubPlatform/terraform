provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state.healhubplatform"
  
  # Enable versioning so we can see the full revision history of our
  # state files
  versioning {
    enabled = true
  }
  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  # TODO add tags
}

resource "aws_s3_bucket_policy" "terraform_state_policy" {
  bucket = aws_s3_bucket.terraform_state.id
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name         = "terraform-state.healhubplatform"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  # TODO add tags
}

terraform {
  backend "s3" {
    bucket         = "terraform-state.healhubplatform"
    key            = "remote_state/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state.healhubplatform"
    encrypt        = true
  }
}

output "remote_state_dynamodb_table" {
  value = aws_dynamodb_table.terraform_state_lock.name
}
output "remote_state_bucket" {
  value = aws_s3_bucket.terraform_state.bucket
}