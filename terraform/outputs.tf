output "service_nodeport" {

  value = kubernetes_service.myapp2.spec[0].port[0].node_port

}

 

output "deployment_name" {

  value = kubernetes_deployment.myapp2.metadata[0].name


}
