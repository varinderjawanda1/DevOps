provider "aws" {
  profile = "default"
  region = "us-east-1"
}

// Dev group
resource "aws_iam_group" "dev_group" {
  name = "devg"
  path = "/"
}
// dev role
resource "aws_iam_role" "developer_role" {
  name = "devr"
  assume_role_policy = ""
  tags = {
    tag-key = "dev_role"
}
}
// dev policy attachment.
//resource "aws_iam_role_policy_attachment" "dev_policy" {
//  policy_arn = "arn:aws:iam::919279782144:policy/EKS_developer_read"
//  policy_arn = "arn:aws:iam::919279782144:policy/s3_developer"
//  role = "${aws_iam_group.dev_group.name}"
//}