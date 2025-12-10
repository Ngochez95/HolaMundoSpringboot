resource "kubernetes_deployment" "myapp" {

  metadata {

    name      = var.deployment_name

    namespace = var.namespace

    labels = {

      app = "myapp"

    }

  }

  spec {

    replicas = 1

 

    selector {

      match_labels = {

        app = "myapp"

      }

    }

 

    template {

      metadata {

        labels = {

          app = "myapp"

        }

      }

 

      spec {

        container {

          name  = "myapp"

          image = "${var.image_registry}/${var.image_name}:${var.image_tag}"

 

          port {

            container_port = var.container_port

          }

        }

      }

    }

  }

}

 

resource "kubernetes_service" "myapp" {

  metadata {

    name      = var.service_name

    namespace = var.namespace

    labels = {

      app = "myapp"

    }

  }

 

  spec {

    type = "NodePort"

 

    selector = {

      app = "myapp"

    }

 

    port {

      port        = var.container_port

      target_port = var.container_port

      node_port   = var.nodeport

    }

  }

}