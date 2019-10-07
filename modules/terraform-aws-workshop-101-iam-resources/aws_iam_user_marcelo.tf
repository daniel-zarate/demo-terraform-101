resource "aws_iam_user" "marcelo" {
  name = "marcelo.malcher@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "marcelo" {
  user    = "${aws_iam_user.marcelo.name}"
  pgp_key = var.pgp_key
}

output "marcelo" {
  value = "${aws_iam_access_key.marcelo}"
}
