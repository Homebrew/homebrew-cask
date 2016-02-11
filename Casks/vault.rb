cask 'vault' do
  version '0.5.0'
  sha256 '8f5ca5927f876737566a23442f098afa1ed3dc9d5b238c3c8f7563e06ab6c64c'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/vault/#{version}/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
