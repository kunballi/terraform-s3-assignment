terraform {
  backend "s3" {
    bucket  = "kunballi-s3-project"
    key     = "kim-s3-project/dev/s3.tfstate"
    region  = "ap-south-1"
    encrypt = true

    # Enable new native locking
    use_lockfile = true

  }
}
