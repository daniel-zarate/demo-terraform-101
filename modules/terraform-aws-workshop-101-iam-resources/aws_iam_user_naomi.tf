resource "aws_iam_user" "naomi" {
  name = "naomi.miller@zx-ventures.com"
  path = "/"
}

resource "aws_iam_access_key" "naomi" {
  user    = "${aws_iam_user.naomi.name}"
  pgp_key = var.pgp_key
}

output "naomi" {
  value = "${aws_iam_access_key.naomi}"
}
