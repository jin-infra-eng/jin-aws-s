# パブリックサブネット1 (AZ a)
resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.aws_study_task17_vpc.id
  cidr_block              = "172.16.1.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "aws-study-task17-public-subnet-a"
  }
}

# パブリックサブネット2 (AZ c)
resource "aws_subnet" "public_c" {
  vpc_id                  = aws_vpc.aws_study_task17_vpc.id
  cidr_block              = "172.16.2.0/24"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "aws-study-task17-public-subnet-c"
  }
}

# プライベートサブネット1 (AZ a)
resource "aws_subnet" "private_a" {
  vpc_id            = aws_vpc.aws_study_task17_vpc.id
  cidr_block        = "172.16.11.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "aws-study-task17-private-subnet-a"
  }
}

# プライベートサブネット2 (AZ c)
resource "aws_subnet" "private_c" {
  vpc_id            = aws_vpc.aws_study_task17_vpc.id
  cidr_block        = "172.16.12.0/24"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "aws-study-task17-private-subnet-c"
  }
}