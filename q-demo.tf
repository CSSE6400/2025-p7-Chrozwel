resource "aws_sqs_queue" "our_first_mailbox" {
    name = "csse6400_prac"
}

resource "aws_sqs_queue" "our_first_fifo" {
    name = "csse6400_prac.fifo"
    fifo_queue = true
    content_based_deduplication = true
}

output "mailbox" {
    value = aws_sqs_queue.our_first_mailbox.arn
}

output "fifo" {
    value = aws_sqs_queue.our_first_fifo.arn
}
