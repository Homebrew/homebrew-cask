cask :v1 => 'tresorit' do
  version :latest
  sha256 :no_check

  url 'https://installerstorage.blob.core.windows.net/install/Tresorit.dmg'
  homepage 'http://tresorit.com'
  license :unknown

  app 'Tresorit.app'
end
