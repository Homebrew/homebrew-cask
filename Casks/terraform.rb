class Terraform < Cask
  version '0.2.2'
  sha256 '1b4581e41e05145d2e9707cad5313636120a80b04cb796a503b3bfe59b6901d2'

  url "https://dl.bintray.com/mitchellh/terraform/terraform_#{version}_darwin_amd64.zip"
  homepage 'http://www.terraform.io/'

  binary 'terraform'
  binary 'terraform-provider-aws'
  binary 'terraform-provider-cloudflare'
  binary 'terraform-provider-consul'
  binary 'terraform-provider-digitalocean'
  binary 'terraform-provider-dnsimple'
  binary 'terraform-provider-google'
  binary 'terraform-provider-heroku'
  binary 'terraform-provider-mailgun'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
