resource "aws_key_pair" "myKP"  {
    key_name = "myAWSkey"
    public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
}

resource "aws_instance" "example" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.myKP.key_name}"

provisioner "file" {
    source = "script.sh"
    destination = "/tmp/script.sh"
}
provisioner "remote-exec" {
    inline = [
        "chmod +x script.sh",
        "sudo /tmp/script.sh"
    ]
}
connection {
    user = "${var.HOST_USER}"
    private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
    host = coalesce(self.public_ip, self.private_ip)
}
output "instance_ips" {
  value = ["${aws_instance.example.*.public_ip}"]
}
}
