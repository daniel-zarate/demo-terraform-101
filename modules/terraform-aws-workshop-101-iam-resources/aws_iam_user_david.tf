resource "aws_iam_user" "david" {
  name = "david.enriquez@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "david" {
  user    = "${aws_iam_user.david.name}"
  pgp_key = var.pgp_key
}

output "david" {
  value = "${aws_iam_access_key.david}"
}
