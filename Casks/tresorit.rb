cask :v1 => 'tresorit' do
  version :latest
  sha256 :no_check

  url 'https://installerstorage.blob.core.windows.net/install/Tresorit.dmg'
  name 'Tresorit'
  homepage 'http://tresorit.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tresorit.app'
end
