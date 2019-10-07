resource "aws_iam_user" "fabio" {
  name = "fabio.pavao@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "fabio" {
  user    = "${aws_iam_user.fabio.name}"
  pgp_key = var.pgp_key
}

output "fabio" {
  value = "${aws_iam_access_key.fabio}"
}
