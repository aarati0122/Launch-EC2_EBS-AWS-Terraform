provider "aws" {
region = "ap-south-1"
profile = "default"

}


resource "aws_security_group" "mysg" {
  #vpc_id      = aws_vpc.main.id

   ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
	Name = "Security Group TF"
  }
}


variable "key_name" {}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "keypair" {
  key_name   = var.key_name
  public_key = "${tls_private_key.example.public_key_openssh}"
}

#resource "aws_key_pair" "keypair" {
 # key_name   = "Terraform-test"
 # public_key = "ssh-rsa"

#} 


resource "aws_instance" "myos" {
 
  ami = "ami-010aff33ed5991201"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name = "${aws_key_pair.keypair.key_name}"

  tags = {
    Name = "EC2_EBC using TF"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = aws_instance.myos.availability_zone
  size              = 1

  tags = {
    Name = "EBS volumn by TF"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.myos.id
  force_detach = true
}
