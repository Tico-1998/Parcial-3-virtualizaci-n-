resource "kubernetes_deployment" "mongo" {
  metadata {
    name = "mongo"
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "mongo"
      }
    }

    template {
      metadata {
        labels = {
          app = "mongo"
        }
      }

      spec {
        container {
          image = "mongo:latest"
          name  = "mongo"
          port {
            container_port = 27017
          }

          resources {
            limits = {
              cpu    = "500m"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "256Mi"
            }
          }
        }
      }
    }
  }
}
