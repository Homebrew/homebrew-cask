cask :v1 => 'tresorit' do
  version :latest
  sha256 :no_check

  # windows.net is the official download host per the vendor homepage
  url 'https://installerstorage.blob.core.windows.net/public/install/Tresorit.dmg'
  name 'Tresorit'
  homepage 'https://tresorit.com/'
  license :gratis

  app 'Tresorit.app'
end
