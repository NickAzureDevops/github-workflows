output "subnet_id" {
  value = aws_subnet.vpc.id
}
output "ami_id" {
  value = data.aws_ssm_parameter.vpc.value

}

output "domain-name" {
  value = aws_instance.web.public_dns
}

output "application-url" {
  value = "${aws_instance.web.public_dns}/index.php"
}
