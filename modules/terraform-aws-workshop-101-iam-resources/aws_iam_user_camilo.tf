resource "aws_iam_user" "camilo" {
  name = "camilo.gil.costa@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "camilo" {
  user    = "${aws_iam_user.camilo.name}"
  pgp_key = var.pgp_key
}

output "camilo" {
  value = "${aws_iam_access_key.camilo}"
}
