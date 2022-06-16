terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.55.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

module "folders-unit" {
  source                = "../module/folder"
  name                  = "Redes"
  short_name            = "Redes"
  automation_project_id = ""
  billing_account_id    = ""
  organization_id       = ""
  root_node             = "org/"
  #prefix                = "unique-prefix"
  environments          = {
    dev = "Development",
    prod = "Production"
  }
  service_account_keys  = false
}
