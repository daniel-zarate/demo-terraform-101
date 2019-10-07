resource "aws_iam_user" "artur" {
  name = "artur@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "artur" {
  user    = "${aws_iam_user.artur.name}"
  pgp_key = var.pgp_key
}

output "artur" {
  value = "${aws_iam_access_key.artur}"
}
