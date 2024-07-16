# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = [var.oidc_audience]
}

deployment "production" {
  variables = {
    region              = "eu-central-1"
    role_arn            = "arn:aws:iam::156494581097:role/tfc-role"
    identity_token_file = identity_token.aws.jwt_filename
    default_tags      = { stacks-preview-example = "lambda-api-gateway-stack" }
  }
}
