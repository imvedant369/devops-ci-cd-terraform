
resource "aws_s3_bucket" "buckets" {
  for_each = toset(var.bucket_names)

  bucket = "${var.prefix}-bucket-${each.value}"
}