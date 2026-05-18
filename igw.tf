# インターネットゲートウェイ
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.aws_study_task17_vpc.id

  tags = {
    Name = "aws-study-task17-igw"
  }
}
