cask :v1 => 'terraform' do
  version '0.6.0'
  sha256 'c519d3d18d5a2b0605bff6e0ca7bb677ea85c833f8e8dbb4af6a48e0ebf76cad'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/terraform/terraform_#{version}_darwin_amd64.zip"
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl

  binary 'terraform'
  binary 'terraform-provider-atlas'
  binary 'terraform-provider-aws'
  binary 'terraform-provider-cloudflare'
  binary 'terraform-provider-cloudstack'
  binary 'terraform-provider-consul'
  binary 'terraform-provider-digitalocean'
  binary 'terraform-provider-dme'
  binary 'terraform-provider-dnsimple'
  binary 'terraform-provider-docker'
  binary 'terraform-provider-google'
  binary 'terraform-provider-heroku'
  binary 'terraform-provider-mailgun'
  binary 'terraform-provider-null'
  binary 'terraform-provider-openstack'
  binary 'terraform-provider-template'
  binary 'terraform-provider-terraform'
  binary 'terraform-provisioner-chef'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
