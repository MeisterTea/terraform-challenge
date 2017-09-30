resource "aws_key_pair" "key" {
    key_name = "aws public key"
    public_key = "${file("keys/id_rsa.pub")}"
}
