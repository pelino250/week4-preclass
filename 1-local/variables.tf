variable "image" {
  type        = string
  description = "Docker Hub image, e.g. youruser/campus-event-notifier:v1"
}

variable "container_port" {
  type        = number
  default     = 8000
  description = "Port the app listens on inside the container"
}

variable "external_port" {
  type        = number
  default     = 8080
  description = "Port on your laptop"
}

variable "container_name" {
  type        = string
  default     = "campus-notifier-tf"
  description = "Must not clash with a container you already created by hand"
}
