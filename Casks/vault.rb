cask :v1 => 'vault' do
  version '0.1.0'
  sha256 'e0a1a1ace4c9577408800825b374c0239c04ebc9ab6ed18c924dc8f0393b9fd5'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/vault/vault_#{version}_darwin_amd64.zip"
  name 'Vault'
  homepage 'https://www.vaultproject.io'
  license :mpl

  binary 'vault'
end
