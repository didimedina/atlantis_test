output "public-ip" {
  value = aws_instance.example-didi.public_ip
}

output "instance-id" {
  value = aws_instance.example-didi.id
}
