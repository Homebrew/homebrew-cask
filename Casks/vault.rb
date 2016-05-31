cask 'vault' do
  version '0.5.3'
  sha256 '31e7eff07c202cf2166ac63457054da59a1f4f49e7ad079b38316efadbb79e32'

  # hashicorp.com/vault was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/vault/#{version}/vault_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/vault/releases.atom',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Vault'
  homepage 'https://www.vaultproject.io/'
  license :mpl

  binary 'vault'
end
