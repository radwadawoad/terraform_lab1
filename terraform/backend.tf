terraform {
  backend "s3" {
    bucket = "terraformstat1"
    key    = "terraform"
    region = "us-east-1"
    dynamodb_table = "safetaerraform"
  }
}
