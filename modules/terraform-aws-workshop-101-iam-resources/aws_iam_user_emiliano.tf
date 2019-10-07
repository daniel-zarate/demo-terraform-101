resource "aws_iam_user" "emiliano" {
  name = "emiliano.marino@valtech.com"
  path = "/"
}

resource "aws_iam_access_key" "emiliano" {
  user    = "${aws_iam_user.emiliano.name}"
  pgp_key = var.pgp_key
}

output "emiliano" {
  value = "${aws_iam_access_key.emiliano}"
}
