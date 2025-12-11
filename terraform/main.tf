resource "kubernetes_deployment" "myapp" {

  metadata {

    name      = var.deployment_name

    namespace = var.namespace

    labels = {

      app = "myapp2"

    }

  }

  spec {

    replicas = 1

 

    selector {

      match_labels = {

        app = "myapp2"

      }

    }

 

    template {

      metadata {

        labels = {

          app = "myapp2"

        }

      }

 

      spec {

        container {

          name  = "myapp2"

          image = "${var.image_registry}/${var.image_name}:${var.image_tag}"

 

          port {

            container_port = var.container_port

          }

        }

      }

    }

  }

}

 

resource "kubernetes_service" "myapp2" {

  metadata {

    name      = var.service_name

    namespace = var.namespace

    labels = {

      app = "myapp2"

    }

  }

 

  spec {

    type = "NodePort"

 

    selector = {

      app = "myapp2"

    }

 

    port {

      port        = var.container_port

      target_port = var.container_port

      node_port   = var.nodeport

    }

  }


}
