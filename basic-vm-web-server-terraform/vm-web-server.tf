#############################################################################################################
# Be A Man Challenge 1
# Use one of the forked GitHub repos from the class 6.5 install doc in order to create a web server from a GCP VM.
# Deliverable = screenshot of the up and running GCP web server, accessible in a browser, over its public IP address
#############################################################################################################

# VM Instance
resource "google_compute_instance" "that" {
name = "be-a-man1"
machine_type = "e2-small"
zone = "us-east1-a"
allow_stopping_for_update = true

boot_disk {
    initialize_params {
        image = "debian-cloud/debian-11"
 }
}
network_interface {
network = "default"
# network = google_compute_network.mainvpc.name
# subnetwork = google_compute_subnetwork.uslizzo.name
access_config {

    }
 }
 metadata_startup_script = file("${path.module}/startup.sh")
}
