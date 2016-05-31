cask 'vault' do
  version '0.5.3'
  sha256 '31e7eff07c202cf2166ac63457054da59a1f4f49e7ad079b38316efadbb79e32'

  # hashicorp.com/vault was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vault/#{version}/vault_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/vault/releases.atom',
          checkpoint: '42046119b424a397ec33ae94799992d07609c3ac8f6362b843b8bf38c9e01ac5'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'
  license :mpl

  binary 'vault'
end
