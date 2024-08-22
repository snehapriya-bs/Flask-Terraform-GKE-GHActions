terraform {
  backend "remote" {
    organization = "Snehapriya"

    workspaces {
      name = "first-project"
    }
  }
}
