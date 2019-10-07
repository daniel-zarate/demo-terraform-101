resource "aws_iam_user" "erik" {
  name = "erik.nakata@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "erik" {
  user    = "${aws_iam_user.erik.name}"
  pgp_key = var.pgp_key
}

output "erik" {
  value = "${aws_iam_access_key.erik}"
}
