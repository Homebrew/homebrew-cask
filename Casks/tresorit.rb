cask 'tresorit' do
  version :latest
  sha256 :no_check

  # installerstorage.blob.core.windows.net was verified as official when first introduced to the cask
  url 'https://installerstorage.blob.core.windows.net/public/install/Tresorit.dmg'
  name 'Tresorit'
  homepage 'https://tresorit.com/'

  app 'Tresorit.app'
end
