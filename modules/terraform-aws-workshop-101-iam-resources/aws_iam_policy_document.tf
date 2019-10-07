data "aws_iam_policy_document" "TerraformCloud_DLM_Policy" {
  statement {
    actions   = ["dlm:GetLifecyclePolicy"]
    resources = ["*"]
  }
}
