

variable "asg_name" {
    default = "Web Cluster"
}

variable "self_signed_cert_arn" {
    default = "arn:aws:acm:us-east-1:068980793254:certificate/1cc52d0e-9152-4646-94cd-552d30c6ba66"
}

variable "availability_zones" {
    default = ["us-east-1a", "us-east-1b"]
}
