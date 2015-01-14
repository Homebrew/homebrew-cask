cask :v1 => 'typinator' do
  version '6.2'
  sha256 '4b9b3acc26716dbf01951043f0102489ffd32436cdad6820e382dbb5b1fa0eb6'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.gsub('.', '')}-Install.dmg"
  name 'Typinator'
  homepage 'http://www.ergonis.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Typinator.app'

  accessibility_access true
end
