resource "aws_iam_user" "alefh" {
  name = "alefh.silva@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "alefh" {
  user    = "${aws_iam_user.alefh.name}"
  pgp_key = var.pgp_key
}

output "alefh" {
  value = "${aws_iam_access_key.alefh}"
}
