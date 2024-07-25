variable "instance_type" {
  description = "The type of instance to launch"
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  default     = "my-key-pair"
}