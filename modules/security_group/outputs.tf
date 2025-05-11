output "shared_sg_id" {
  description = "ID of the shared security group"
  value       = aws_security_group.shared_sg.id
}
