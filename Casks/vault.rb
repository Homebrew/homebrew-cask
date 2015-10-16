cask :v1 => 'vault' do
  version '0.3.1'
  sha256 '0a67d3ee6743c96e6cb96484b208555a2ea6f19fd7b51057410fd6f4a49aafad'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
