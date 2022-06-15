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

