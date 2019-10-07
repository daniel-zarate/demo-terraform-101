resource "aws_iam_user" "guilherme" {
  name = "guilherme.ribeiro@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "guilherme" {
  user    = "${aws_iam_user.guilherme.name}"
  pgp_key = var.pgp_key
}

output "guilherme" {
  value = "${aws_iam_access_key.guilherme}"
}
