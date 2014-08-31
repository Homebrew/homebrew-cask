class Terraform < Cask
  version '0.2.1'
  sha256 '65a3ebbad375daabe857046bdbbd207f315c89a27ca89d1e1630b0f4c6fa03a2'

  url 'https://dl.bintray.com/mitchellh/terraform/terraform_0.2.1_darwin_386.zip'
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
