resource "aws_iam_user" "victor" {
  name = "99798304@ambev.com.br"
  path = "/"
}

resource "aws_iam_access_key" "victor" {
  user    = "${aws_iam_user.victor.name}"
  pgp_key = var.pgp_key
}

output "victor" {
  value = "${aws_iam_access_key.victor}"
}
