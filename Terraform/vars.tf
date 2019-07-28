variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "us-east-1"
}

variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-0cfee17793b08a293"
        us-west-1 = "ami-09573a2ba9fb7af70"
        eu-west-1 = "ami-0ddf403ca855dacf5"
    }
}

variable "PATH_TO_PUBLIC_KEY" {
    default = "myKP.pub"
}
variable "PATH_TO_PRIVATE_KEY" {
    default = "myKP"
}
variable "HOST_USER" {
    default = "ubuntu"
}
