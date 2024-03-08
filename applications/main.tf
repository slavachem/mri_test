provider "kubernetes" {
  kubeconfig_path = "~/.kube/config"
}

resource "kubernetes_namespace" "default" {
  metadata {
    name = "default"
  }
}

resource "kustomization" "podinfo" {
  path = ./kustomize_podinfo
  namespace = kubernetes_namespace.default.metadata[0].name
}
