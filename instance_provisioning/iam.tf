provider "aws" {
  profile = "default"
  region  = var.region
}

//resource "aws_instance" "jawanda" {
//  ami           = "ami-2757f631"
//  instance_type = "t2.micro"
//  provisioner "local-exec" {
//    command = "pwd && ls > output.txt"
//  }
//}
//resource "aws_eip" "ip" {
//  vpc = true
//  instance = aws_instance.jawanda.id
//}

resource "aws_iam_user" "developer" {
  name = "developer"
}
resource "aws_iam_group" "developer" {
  name = "dev_group"
}
resource "aws_iam_group_policy" "" {
  group = "${aws_iam_group.developer.name}"
  policy = ""
}
resource "aws_iam_access_key" "developer" {
  user = "${aws_iam_user.developer.name}"
}
resource "aws_iam_role" "developer" {
  assume_role_policy = ""
}
resource "aws_iam_user_ssh_key" "" {
  encoding = ""
  public_key = ""
  username = ""
}
resource "aws_iam_policy" "" {
  policy = ""
}

//tester IAM

resource "aws_iam_user" "developer" {
  name = "developer"
}
resource "aws_iam_group" "developer" {
  name = "dev_group"
}
resource "aws_iam_group_policy" "" {
  group = "${aws_iam_group.developer.name}"
  policy = ""
}
resource "aws_iam_access_key" "developer" {
  user = "${aws_iam_user.developer.name}"
}
resource "aws_iam_role" "developer" {
  assume_role_policy = ""
}
resource "aws_iam_user_ssh_key" "" {
  encoding = ""
  public_key = ""
  username = ""
}
resource "aws_iam_policy" "" {
  policy = ""
}

// Infrastructure IAM

resource "aws_iam_user" "developer" {
  name = "developer"
}
resource "aws_iam_group" "developer" {
  name = "dev_group"
}
resource "aws_iam_group_policy" "" {
  group = "${aws_iam_group.developer.name}"
  policy = ""
}
resource "aws_iam_access_key" "developer" {
  user = "${aws_iam_user.developer.name}"
}
resource "aws_iam_role" "developer" {
  assume_role_policy = ""
}
resource "aws_iam_user_ssh_key" "" {
  encoding = ""
  public_key = ""
  username = ""
}
resource "aws_iam_policy" "" {
  policy = ""
}

// DevOps IAM

resource "aws_iam_user" "developer" {
  name = "developer"
}
resource "aws_iam_group" "developer" {
  name = "dev_group"
}
resource "aws_iam_group_policy" "" {
  group = "${aws_iam_group.developer.name}"
  policy = ""
}
resource "aws_iam_access_key" "developer" {
  user = "${aws_iam_user.developer.name}"
}
resource "aws_iam_role" "developer" {
  assume_role_policy = ""
}
resource "aws_iam_user_ssh_key" "" {
  encoding = ""
  public_key = ""
  username = ""
}
resource "aws_iam_policy" "" {
  policy = ""
}
