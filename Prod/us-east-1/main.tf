resource "aws_ssm_parameter" "prd-paramstore" {
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

resource "aws_ssm_parameter" "prd-paramstore-2" {
  name        = "/myapp/prd/db_password2"
  description = "Database password for prd"
  type        = "SecureString"  # or "String"
  value       = "my-secret-pas2s"
  overwrite   = true

  tags = {
    Environment = "prd"
    Application = "myapp"
  }
}