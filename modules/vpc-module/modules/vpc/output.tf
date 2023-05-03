output "subnet_id" {
   value = aws_subnet.vpc.id
}
output "ami_id" {
  value = data.aws_ssm_parameter.vpc.value

}