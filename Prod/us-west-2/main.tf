resource "aws_ssm_parameter" "db_password" {
  name        = "/myapp/prd/db_password"
  type        = "SecureString"
  value       = "secret"
  overwrite   = true
  tags = {
    Environment = "prd"
    Application = "myapp"
  }
}