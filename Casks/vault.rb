cask :v1 => 'vault' do
  version '0.3.0'
  sha256 'f6c7a30671a90df09d39197262e019a7dd7ad36a68d2f5895080b899aa81fc58'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
