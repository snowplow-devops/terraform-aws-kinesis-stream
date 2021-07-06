variable "name" {
  description = "The name to give to the new stream"
  type        = string
}

module "stream" {
  source = "../../"

  name = var.name
}

output "name" {
  value = module.stream.name
}
