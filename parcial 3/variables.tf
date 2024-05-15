variable "kubernetes_config_path" {
  description = "Path to the Kubernetes config file"
  default     = "~/.kube/config"
}

variable "frontend_image" {
  description = "Docker image for the frontend"
  default     = "yourdockerhub/frontend:latest"
}

variable "backend_image" {
  description = "Docker image for the backend"
  default     = "yourdockerhub/backend:latest"
}

variable "mongo_image" {
  description = "Docker image for MongoDB"
  default     = "mongo:latest"
}
