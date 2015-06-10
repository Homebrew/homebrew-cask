cask :v1 => 'tresorit' do
  version :latest
  sha256 :no_check

  # windows.net is the official download host per the vendor homepage
  url 'https://installerstorage.blob.core.windows.net/public/install/Tresorit.dmg'
  name 'Tresorit'
  homepage 'https://tresorit.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tresorit.app'
end
