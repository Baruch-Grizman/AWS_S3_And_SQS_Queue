# create aws_s3_bucket
resource "aws_s3_bucket" "asb_bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "dev-bucket"
  }
}


resource "aws_s3_bucket_acl" "asb_acl" {
  bucket = aws_s3_bucket.asb_bucket.id
  acl    = var.acl_value
}