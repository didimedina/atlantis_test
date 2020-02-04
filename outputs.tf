output "public-ip" {
  value = aws_instance.example.public_ip
}

output "instance-id" {
  value = aws_instance.example.id
}
