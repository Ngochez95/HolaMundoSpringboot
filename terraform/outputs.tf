output "service_nodeport" {

  value = kubernetes_service.myapp.spec[0].port[0].node_port

}

 

output "deployment_name" {

  value = kubernetes_deployment.myapp.metadata[0].name

}