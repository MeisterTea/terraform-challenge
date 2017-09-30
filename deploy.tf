resource "aws_instance" "web" {
    ami           = "ami-1e339e71"
    instance_type = "t2.micro"
    key_name = "${aws_key_pair.key.id}"
    security_groups = ["${aws_security_group.standard.name}"]

    tags {
        Name = "hello world"
    }

    provisioner "local-exec" {
        command = "sleep 30 && ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key keys/id_rsa.pem -i '${aws_instance.web.public_ip},' provision.yml"
    }
}
