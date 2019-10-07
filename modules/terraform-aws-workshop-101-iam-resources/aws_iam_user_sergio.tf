resource "aws_iam_user" "sergio" {
  name = "kinquela@gmail.com"
  path = "/"
}

resource "aws_iam_access_key" "sergio" {
  user    = "${aws_iam_user.sergio.name}"
  pgp_key = var.pgp_key
}

output "sergio" {
  value = "${aws_iam_access_key.sergio}"
}
