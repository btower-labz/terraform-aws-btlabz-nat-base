resource "aws_eip" "main" {
  vpc = true
}

resource "aws_nat_gateway" "main" {
  allocation_id = "${aws_eip.main.id}"
  subnet_id     = "${var.subnet-id}"

  tags = "${merge(
    var.tags,
    map(
      "Name", "${var.name}"
    )
  )}"
}
