resource "aws_iam_user" "rajya" {
  name = "rajya.yanamandala@zx-ventures.com"
  path = "/"
}

resource "aws_iam_access_key" "rajya" {
  user    = "${aws_iam_user.rajya.name}"
  pgp_key = var.pgp_key
}

output "rajya" {
  value = "${aws_iam_access_key.rajya}"
}
