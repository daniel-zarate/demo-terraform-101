resource "aws_iam_user" "alejandro" {
  name = "alejandro.salcedo@zx-ventures.mx"
  path = "/"
}

resource "aws_iam_access_key" "alejandro" {
  user    = "${aws_iam_user.alejandro.name}"
  pgp_key = var.pgp_key
}

output "alejandro" {
  value = "${aws_iam_access_key.alejandro}"
}
