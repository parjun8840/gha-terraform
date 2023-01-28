variable "public_subnet" {
  type    = list(string)
  default = ["pubsub1", "pubsub2"]
}

variable "ingress_url" {
  type    = string
  default = "https://parjun8840.in"
}

variable "name" {
  type    = string
  default = "parjun8840"
}
