terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    docker = {
      source  = "terraform-providers/docker"
      version = "~> 2.7"
    }
  }
}

provider "kubernetes" {
  config_path = var.kubernetes_config_path
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}
