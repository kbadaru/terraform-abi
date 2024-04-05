provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-080e1f13689e07408"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-0631dd5f61074fd47"
  # tags = {
  #     name = example
  #   }
}

module "my_bucket" {
  source = "./modules/s3"
  bucket_name = "my-test-bucket3457"

  # tags = {
  #   Name        = "Kash bucket"
  #   Environment = "Dev"
  # }
}