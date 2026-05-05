resource "aws_vpc" "aws_study_task17_vpc" {
  cidr_block = "172.16.0.0/16"

tags = {
    Name = "aws-study-task17-vpc"
  }
}