resource "aws_iam_user" "jorge" {
  name = "jorge.franco@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "jorge" {
  user    = "${aws_iam_user.jorge.name}"
  pgp_key = var.pgp_key
}

output "jorge" {
  value = "${aws_iam_access_key.jorge}"
}
