resource "aws_db_subnet_group" "db_subnets" {
     name = "db-subnet-group" 
     subnet_ids = [
         aws_subnet.private_a.id, 
         aws_subnet.private_c.id # 必要なら複数AZ用に private-subnet2 も追加 
         ] 
         tags = { Name = "aws-study-task17-db-subnet-group" } 
}
