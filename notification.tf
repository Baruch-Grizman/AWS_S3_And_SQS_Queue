resource "aws_sqs_queue" "asb_queue" {
  name = var.queue_name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "sqs:SendMessage",
      "Resource": "arn:aws:sqs:*:*:s3-event-notification-queue",
      "Condition": {
        "ArnEquals": { "aws:SourceArn": "${aws_s3_bucket.asb_bucket.arn}" }
      }
    }
  ]
}
POLICY
}

resource "aws_s3_bucket_notification" "asb_bucket_notification" {
  bucket = aws_s3_bucket.asb_bucket.id

  queue {
    queue_arn     = aws_sqs_queue.asb_queue.arn
    events        = ["s3:ObjectCreated:*"]
    filter_suffix = ".log"
  }
}