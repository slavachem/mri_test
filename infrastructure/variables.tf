/* Putting all the information that may need to be referenced from multiple locations in here
Things like project id, name, region, zones and service account are likely to need to be used in 
more than one place therefore having a centralized file for updating them makes life easier

As an aside in a live environment these could be pulled from a centralized environment such a 
hashicorp vault
*/
variable "project_id" {
  type    = string
  default = "MRI-SLAVA-TEST"
}

variable "name" {
  type    = string
  default = "slava-test"
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "zones" {
  type    = list(string)
  default = ["us-central1-c"]
}

variable "service_account" {
  type    = string
  default = "mri-slava-test-service@MRI-SLAVA-TEST.iam.gserviceaccount.com"
}
