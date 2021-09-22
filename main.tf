terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">3.0"
    }
  }
}

provider "aws" {
  access_key = "AKIA2ZGW7CLYGVLUZVKN"
  secret_key = "18zjPkyBPB48yEMfb/SW5e3Is15ysI894ur7gefs"
  region     = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-02892a4ea9bfa2192"
  instance_type = "t2.micro"
  key_name      = "ip"
  tags = {
    Name = "muntidada007"
  }
}

output "instance" {
    value = aws_instance.example.public_ip
  
}
