terraform {
  backend "s3" {
    bucket  = ""wezvatech-nov-2026-tfstate""
    key     = "kim-s3-project/dev/s3.tfstate"
    region  = "ap-south-1"
    encrypt = true

    # Enable new native locking
    use_lockfile = true

  }
}
