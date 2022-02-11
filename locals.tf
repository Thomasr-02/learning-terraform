locals {
  common_tags = {
    Name        = "My bucket for Terraform"
    Environment = "Dev"
    Managedby   = "Terraform"
    Owner       = "Thomas R"
    UpdateAt    = "02-09-2022"
  }
  ip_file_path = "ips.json"

}
