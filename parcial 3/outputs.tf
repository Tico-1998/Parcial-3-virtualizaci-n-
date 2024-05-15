output "frontend_service_ip" {
  value = kubernetes_service.frontend_service.status[0].load_balancer.ingress[0].ip
  description = "IP address for the frontend service"
}

output "backend_service_ip" {
  value = kubernetes_service.backend_service.status[0].load_balancer.ingress[0].ip
  description = "IP address for the backend service"
}

output "mongo_service_ip" {
  value = kubernetes_service.mongo_service.status[0].load_balancer.ingress[0].ip
  description = "IP address for the MongoDB service"
}
