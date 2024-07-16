# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "production-de" {
  variables = {
    region              = "eu-central-1"
    role_arn            = "arn:aws:iam::156494581097:role/tfc-role"
    identity_token_file = identity_token.aws.jwt_filename
    # default_tags      = { stacks-preview-example = "lambda-api-gateway-stack" }
  }
}

deployment "production-us" {
  variables = {
    region              = "us-east-1"
    role_arn            = "arn:aws:iam::156494581097:role/tfc-role"
    identity_token_file = identity_token.aws.jwt_filename
    # default_tags      = { stacks-preview-example = "lambda-api-gateway-stack" }
  }
}