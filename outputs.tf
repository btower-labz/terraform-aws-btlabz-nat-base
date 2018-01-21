output "public-ip" {
  value = "${aws_eip.main.public_ip}"
}

output "nat-id" {
  value = "${aws_nat_gateway.main.id}"
}
