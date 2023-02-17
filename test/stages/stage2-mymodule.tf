module "gitops_module" {
  source = "./module"
  depends_on = [
    module.serverless_operator
  ]

  gitops_config = module.gitops.gitops_config
  git_credentials = module.gitops.git_credentials
  server_name = module.gitops.server_name
  namespace = "knative-serving"
  kubeseal_cert = module.gitops.sealed_secrets_cert
}
