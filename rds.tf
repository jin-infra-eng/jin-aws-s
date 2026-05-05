resource "aws_db_instance" "db" { 
    identifier = "mydb" 
    allocated_storage = 20 
    engine = "mysql" 
    engine_version = "8.0" 
    instance_class = "db.t3.micro" 
    username = "admin" 
    password = "password123"    # 学習用。提出時は tfvars か変数化を検討
    db_subnet_group_name = aws_db_subnet_group.db_subnets.name 
    vpc_security_group_ids = [aws_security_group.rds_sg.id] 
    
    skip_final_snapshot = true  # 削除時スナップショットなし（学習用） 
    
    publicly_accessible = false # インターネット公開しない 
    multi_az = false            # 学習用なのでシングルAZ 
}
