terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "LANGUEDOC"
    workspaces {
      name = "septimania"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {}

resource "github_repository" "venn-laptop" {
  name = "septimania"
  description = "FRA: Extensions des sites webs OCC: Extension dels sites webs"

  visibility = "public"
}
