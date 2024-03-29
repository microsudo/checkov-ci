provider "aws" {
  version = "~> 2.41"
  region  = "us-west-2"
}

resource "aws_iam_policy" "basically_allow_all" {
  name        = "some_policy"
  path        = "/"
  description = "Some policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}