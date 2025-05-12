resource "aws_ssm_parameter" "dev-paramstore" {
  name        = "/myapp/prd/db_password"
  description = "Database password for prd"
  type        = "SecureString"  # or "String"
  value       = "my-secret-pass"
  overwrite   = true

  tags = {
    Environment = "prd"
    Application = "myapp"
  }
}