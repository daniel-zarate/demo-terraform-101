resource "aws_iam_user" "greg" {
  name = "greg@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "greg" {
  user    = "${aws_iam_user.greg.name}"
  pgp_key = var.pgp_key
}

output "greg" {
  value = "${aws_iam_access_key.greg}"
}
