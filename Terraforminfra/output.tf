output "vpc_id" {
  value = "${aws_vpc.main.id}"
}

output "alb_dns_name" {
  value = "${aws_lb.front.dns_name}"
}

output "security_group" {
  value = "${aws_security_group.security_group.id}"
}

output "subnet1" {
  value = "${aws_subnet.subnet1.id}"
}

output "subnet2" {
  value = "${aws_subnet.subnet2.id}"
}
