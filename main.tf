provider "aws" {
  region = "us-east-2"
}

data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "example-didi" {
  instance_type = "t2.micro"
  ami           = data.aws_ami.amazon-linux-2.id
  tags = {
    Name = "only_didi_test"
  }
}
