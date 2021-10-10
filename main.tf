resource "aws_eip" "main" {
  vpc = true

  tags = merge(
    var.tags,
    {
      "Name" = var.name
    },
  )
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = var.subnet_id

  tags = merge(
    var.tags,
    {
      "Name" = var.name
    },
  )
}
