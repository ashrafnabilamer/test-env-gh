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

resource "aws_ssm_parameter" "prd-paramstorenew" {
  name        = "/myapp/prd/db_passwordnew"
  description = "Database password for prd"
  type        = "SecureString"  # or "String"
  value       = "my-secret-passew"
  overwrite   = true

  tags = {
    Environment = "prd"
    Application = "myapp"
  }
}
