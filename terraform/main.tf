resource "aws_s3_bucket" "demo" {
    for_each = toset (var.bucket_name)
    
    bucket = "example-${each.key}-${var.environment}"
    tags = {
        Name = each.value
        Enviornment = var.environment
    }
}