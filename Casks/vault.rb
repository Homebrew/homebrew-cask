cask 'vault' do
  version '0.6.0'
  sha256 '75a884f3f209f2fdd942fc4b5c80a611c58380ccf249f6dc4d3b1c35373d87b2'

  # hashicorp.com/vault was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vault/#{version}/vault_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/vault/releases.atom',
          checkpoint: '82f5ef02c94a4cfe0e1acd3fd0d5156c2ad29a79d05938597246c4532d7d9fc5'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'
  license :mpl

  binary 'vault'
end
