resource "aws_iam_user" "joaquin" {
  name = "joaquin.calio@valtech.com"
  path = "/"
}

resource "aws_iam_access_key" "joaquin" {
  user    = "${aws_iam_user.joaquin.name}"
  pgp_key = var.pgp_key
}

output "joaquin" {
  value = "${aws_iam_access_key.joaquin}"
}
