resource "aws_s3_bucket" "dev_env_bucket" {
  bucket = "kevin-brange-github-oidc-dev-env-bucket"
}

resource "aws_s3_bucket" "prod_env_bucket" {
  bucket = "kevin-brange-github-oidc-prod-env-bucket"
}
