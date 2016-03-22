cask 'vault' do
  version '0.5.2'
  sha256 '48bf1d66cc3b81293186fd458f63fc2b02344aec5f1490c9b9a2915831c13d33'

  # hashicorp.com/vault was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vault/#{version}/vault_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/vault/releases.atom',
          checkpoint: '42046119b424a397ec33ae94799992d07609c3ac8f6362b843b8bf38c9e01ac5'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'
  license :mpl

  binary 'vault'
end
