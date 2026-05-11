# パブリックルートテーブル
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.aws_study_task17_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

# プライベートルートテーブル
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.aws_study_task17_vpc.id


  tags = {
    Name = "private-rt"
  }
}
