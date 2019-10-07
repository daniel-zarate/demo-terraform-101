resource "aws_iam_group_membership" "attendees" {
  name = "TerraformCloudDevelopers-membership"

  users = [
    "${aws_iam_user.alefh.name}",
    "${aws_iam_user.alejandro.name}",
    "${aws_iam_user.anderson.name}",
    "${aws_iam_user.artur.name}",
    "${aws_iam_user.camilo.name}",
    "${aws_iam_user.daniel.name}",
    "${aws_iam_user.david.name}",
    "${aws_iam_user.denis.name}",
    "${aws_iam_user.emiliano.name}",
    "${aws_iam_user.erik.name}",
    "${aws_iam_user.fabio.name}",
    "${aws_iam_user.greg.name}",
    "${aws_iam_user.guilherme.name}",
    "${aws_iam_user.joao.name}",
    "${aws_iam_user.joaquin.name}",
    "${aws_iam_user.jorge.name}",
    "${aws_iam_user.jpgrace.name}",
    "${aws_iam_user.leandro.name}",
    "${aws_iam_user.marcelo.name}",
    "${aws_iam_user.naomi.name}",
    "${aws_iam_user.rajya.name}",
    "${aws_iam_user.sergio.name}",
    "${aws_iam_user.victor.name}",
  ]

  group = "${aws_iam_group.terraform_cloud_developers.name}"
}
