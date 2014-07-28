class Terraform < Cask
  version '0.1.0'
  sha256 '309aed0ed61586e2682f58b77781f8e9805745a5edd1aebcddf883c9f624a0b9'

  url 'https://dl.bintray.com/mitchellh/terraform/0.1.0_darwin_amd64.zip'
  homepage 'http://www.terraform.io/'

  binary 'terraform'
  binary 'terraform-provider-aws'
  binary 'terraform-provider-consul'
  binary 'terraform-provider-digitalocean'
  binary 'terraform-provider-dnsimple'
  binary 'terraform-provider-heroku'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
