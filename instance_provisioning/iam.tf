resource "aws_iam_group" "developer" {
  name = "dev"
}

resource "aws_iam_role" "developer" {
  assume_role_policy = ""
}
resource "aws_iam_group_membership" "developer" {
  group = "${aws_iam_group.developer.name}"
  name = "developer_membership"
  users = []
}