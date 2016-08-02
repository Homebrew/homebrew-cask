cask 'terraform' do
  version '0.7.0'
  sha256 '4720e4b2878b3b0d3d781f68ff363707ed42fe39cb89e2e34c6c11f8e0f76b04'

  # hashicorp.com/terraform was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/terraform/#{version}/terraform_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/terraform/releases.atom',
          checkpoint: '249f260a8fda094ce3d50512f8922a07a5a676e52a6a64896fa89fdcaeef84c7'
  name 'Terraform'
  homepage 'https://www.terraform.io/'
  license :mpl

  binary 'terraform'
end
