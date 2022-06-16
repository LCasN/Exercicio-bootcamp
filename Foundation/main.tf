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

module "instances" {
  source     = "../modules/instances"
}

module "storage" {
  source     = "../modules/storage"
}

module "network" {
  source     = "../modules/network"
}

resource "google_folder" "unidade-1" {
    display_name = "Unidade-01"
    parent =  "org/unidade1"

}

resource "google_folder" "dev1" {
    display_name = "dev1"
    parent = google_folder.unidade1.dev1

}

resource "google_folder" "prod1" {
    display_name = "prod1"
    parent = google_folder.unidade1.prod1

}

resource "google_folder" "unidade-2" {
    display_name = "Unidade-02"
    parent = "org/unidade2"

}

resource "google_folder" "dev2" {
    display_name = "dev2"
    parent = google_folder.unidade2.dev2

}

resource "google_folder" "prod2" {
    display_name = "prod2"
    parent = google_folder.unidade2.prod2

}

