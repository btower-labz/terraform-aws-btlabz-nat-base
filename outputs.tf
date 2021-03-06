output "public_ip" {
  description = "NAT's public IP address."
  value       = aws_eip.main.public_ip
}

output "nat_id" {
  description = "NAT identifier."
  value       = aws_nat_gateway.main.id
}

