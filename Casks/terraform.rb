class Terraform < Cask
  version '0.3.0'
  sha256 '6c8eb551381eb331c0ef3f5615a60529bc45de1c702b02ed4dfa523cffa26084'

  url "https://dl.bintray.com/mitchellh/terraform/terraform_#{version}_darwin_amd64.zip"
  homepage 'http://www.terraform.io/'
  license :mpl

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
