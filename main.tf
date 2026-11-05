/*
Wezva Technologies - Cloud Infrastructure Automation Framework
Component: S3 Storage Module
Author: Adam, Head of Platform
Optimized: For_each object looping, strict multi-tier backup archiving timelines.
*/

provider "aws" {
  region = "ap-south-1"
}

# Invoke your modular compliance bucket creation tier cleanly
module "infrastructure_compliance_storage" {
  source            = "./s3_compliance_bucket"
  environment       = "production"
  enable_versioning = var.enable_versioning
  enable_lifecycle  = var.enable_lifecycle
  # 🎯 DYNAMIC INPUT: Simply add or append bucket name strings to this variable array block
  bucket_names = ["kunballi-s3-project-wezva"]
}

# Output tracking loop maps straight to your terminal screen for verification
output "deployed_infrastructure_storage_arns" {
  value = module.infrastructure_compliance_storage.bucket_arns
}


