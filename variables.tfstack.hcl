# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  type = string
}

variable "identity_token_file" {
  type = string
}

variable "role_arn" {
  type = string
}

/* variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default     = {}
} */

variable "oidc_audience" {
  description = "Audience configured for the OIDC assume role"
  default = "aws.workload.identity"
  type = string
}