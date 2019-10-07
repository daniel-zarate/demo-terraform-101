resource "aws_iam_group_policy_attachment" "AmazonEC2FullAccess" {
  group      = "${aws_iam_group.terraform_cloud_developers.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "IAMFullAccess" {
  group      = "${aws_iam_group.terraform_cloud_developers.name}"
  policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

resource "aws_iam_group_policy_attachment" "AmazonS3FullAccess" {
  group      = "${aws_iam_group.terraform_cloud_developers.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_group_policy_attachment" "AmazonRoute53FullAccess" {
  group      = "${aws_iam_group.terraform_cloud_developers.name}"
  policy_arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}
