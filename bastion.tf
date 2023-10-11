provider "aws" {
  region     = "ap-northeast-2"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "bastion" {
  ami           = "ami-0c9c942bd7bf113a2"  # Ubuntu 22.04 LTS
  instance_type = "t2.micro"
  key_name      = "hi-key"                 # SSH 키페어 이름
  tags = {
    Name = "BastionHost"
  }
}
