resource "aws_iam_user" "joao" {
  name = "joao.storarri@ze.delivery"
  path = "/"
}

resource "aws_iam_access_key" "joao" {
  user    = "${aws_iam_user.joao.name}"
  pgp_key = var.pgp_key
}

output "joao" {
  value = "${aws_iam_access_key.joao}"
}
