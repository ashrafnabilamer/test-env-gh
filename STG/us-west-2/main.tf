resource "aws_ssm_parameter" "dev-paramstore" {
  name        = "/myapp/stg/db_password"
  description = "Database password for stg"
  type        = "SecureString"  # or "String"
  value       = "my-secret-pass"
  overwrite   = true

  tags = {
    Environment = "stg"
    Application = "myapp"
  }
}
