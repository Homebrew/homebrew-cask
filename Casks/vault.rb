cask :v1 => 'vault' do
  version '0.2.0'
  sha256 '73dfa187a01fd4490b4c8a62a4316a4bd054538d4fd2df869415b0b00f37d654'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
