cask :v1 => 'terraform' do
  version '0.3.1'
  sha256 'dda41425c7eb06c5e8b3f5ad4904e993aa8a9ab6b61f954ee2e259667cb6ff57'

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
  binary 'terraform-provider-null'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
