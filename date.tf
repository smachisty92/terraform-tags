data "terraform_remote_state" "ec2" {
  backend = "s3"
  config = {
    bucket = "terraform62"
    key = "mutable/frontend/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}