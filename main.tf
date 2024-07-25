provider "aws" {
  region = "us-east-1"
}

module "firefly_1" {
  source = "./firefly_1"

  instance_type = "t2.micro"
  key_name      = "my-key-pair"
}