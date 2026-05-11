resource "aws_instance" "public_ec2" {
  ami                    = "ami-088b486f20fab3f0e"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_a.id
  key_name               = "TEST-AWS-basic-key" # 既存のキーペアを活用
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  associate_public_ip_address = true # 接続確認。確認後、falseにする。       

  user_data = <<-EOF
#!/bin/bash
yum update -y
yum install -y nginx                       # 接続確認用の簡易Webサーバー
systemctl start nginx
systemctl enable nginx
echo "Hello from EC2" > /usr/share/nginx/html/index.html
EOF

  tags = {
    Name = "aws-study-task17-public-ec2"
  }
}