resource "aws_key_pair" "task_key" {
        key_name        =       "task_key"
        public_key      =       tls_private_key.rsa.public_key_openssh
}
resource "tls_private_key" "rsa" {
        algorithm       =       "RSA"
        rsa_bits        =       4096
}
resource "local_file" "task_key" {
        content  =      tls_private_key.rsa.private_key_pem
        filename =      "task_key"
}
