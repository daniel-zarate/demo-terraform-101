resource "aws_iam_user" "leandro" {
  name = "leacriolani@gmail.com"
  path = "/"
}

resource "aws_iam_access_key" "leandro" {
  user    = "${aws_iam_user.leandro.name}"
  pgp_key = var.pgp_key
}

output "leandro" {
  value = "${aws_iam_access_key.leandro}"
}
