# Create AWS IAM group
resource "aws_iam_group" "this" {
  name = var.iam_group_name
}

# Create group policy
resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  policy      = var.policy
}

# Attach policy to the group
resource "aws_iam_group_policy_attachment" "this" {
  group      = aws_iam_group.this.name
  policy_arn = aws_iam_policy.this.arn
}
