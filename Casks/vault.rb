cask :v1 => 'vault' do
  version '0.1.1'
  sha256 'f8ead6138a55a7aeb40f9a0cbb28e47c271f8ca1cbff254bd9375bf2e1558659'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
