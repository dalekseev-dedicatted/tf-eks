module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.4.0"

  repository_name                 = var.ecr_repository_name
  repository_image_scan_on_push   = true
  repository_image_tag_mutability = "IMMUTABLE"
  create_lifecycle_policy         = false
  # Skip creating the ECR repository if it already exists in the account
  create_repository = false
  tags              = var.tags
}
