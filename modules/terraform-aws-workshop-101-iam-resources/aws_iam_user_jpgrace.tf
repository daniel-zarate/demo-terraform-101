resource "aws_iam_user" "jpgrace" {
  name = "jp.grace@zx-ventures.com"
  path = "/"
}

resource "aws_iam_access_key" "jpgrace" {
  user    = "${aws_iam_user.jpgrace.name}"
  pgp_key = var.pgp_key
}

output "jpgrace" {
  value = "${aws_iam_access_key.jpgrace}"
}
