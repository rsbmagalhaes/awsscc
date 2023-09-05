terraform {
  required_providers {
    sysdig = {
      source = "sysdiglabs/sysdig"
    }
  }
}

provider "sysdig" {
  sysdig_secure_url       = "https://us-south.security-compliance-secure.cloud.ibm.com"
  sysdig_secure_api_token = "d232216d-715f-47a9-8e22-6f6704d3753f"
}

provider "aws" {
  region = "us-east"
}

module "single-account" {
  source = "sysdiglabs/secure-for-cloud/aws//examples/single-account"
}

