cask :v1 => 'vault' do
  version '0.1.2'
  sha256 '42fe870cedb1152d1cb43e22c14a8786a30476764055de37a2fbf98e92cebe9b'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
