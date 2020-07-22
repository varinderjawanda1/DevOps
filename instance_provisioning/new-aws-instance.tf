provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "jawanda" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "pwd && ls > output.txt"
  }
}
resource "aws_eip" "ip" {
  vpc = true
  instance = aws_instance.jawanda.id
}