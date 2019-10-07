resource "aws_iam_user" "daniel" {
  name = "daniel@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "daniel" {
  user    = "${aws_iam_user.daniel.name}"
  pgp_key = var.pgp_key
}

output "daniel" {
  value = "${aws_iam_access_key.daniel}"
}
