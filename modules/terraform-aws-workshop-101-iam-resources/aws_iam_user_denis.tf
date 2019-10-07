resource "aws_iam_user" "denis" {
  name = "denis.ikeda@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "denis" {
  user    = "${aws_iam_user.denis.name}"
  pgp_key = var.pgp_key
}

output "denis" {
  value = "${aws_iam_access_key.denis}"
}
