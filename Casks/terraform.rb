cask :v1 => 'terraform' do
  version '0.4.1'
  sha256 '08bb2eaa5b4eae89963e5ed1598689d95d220c0cafb59bbd5f266f8e326ac944'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/terraform/terraform_#{version}_darwin_amd64.zip"
  homepage 'http://www.terraform.io/'
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
  binary 'terraform-provider-terraform'
  binary 'terraform-provisioner-file'
  binary 'terraform-provisioner-local-exec'
  binary 'terraform-provisioner-remote-exec'
end
