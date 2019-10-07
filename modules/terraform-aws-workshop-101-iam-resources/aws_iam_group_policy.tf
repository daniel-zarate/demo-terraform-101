resource "aws_iam_group_policy" "terraform_cloud_developers_policy" {
  name  = "terraform_cloud_developers_policy"
  group = "${aws_iam_group.terraform_cloud_developers.id}"
  policy = "${data.aws_iam_policy_document.TerraformCloud_DLM_Policy.json}"
}
