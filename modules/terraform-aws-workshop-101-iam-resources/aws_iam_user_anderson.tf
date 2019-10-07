resource "aws_iam_user" "anderson" {
  name = "anderson.sousa@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "anderson" {
  user    = "${aws_iam_user.anderson.name}"
  pgp_key = var.pgp_key
}

output "anderson" {
  value = "${aws_iam_access_key.anderson}"
}
