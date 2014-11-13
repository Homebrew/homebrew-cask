cask :v1 => 'typinator' do
  version '6.2'
  sha256 '4b9b3acc26716dbf01951043f0102489ffd32436cdad6820e382dbb5b1fa0eb6'

  url "http://www.ergonis.com/downloads/products/typinator/Typinator#{version.gsub('.', '')}-Install.dmg"
  homepage 'http://www.ergonis.com/'
  license :unknown

  app 'Typinator.app'
  caveats do
    assistive_devices
  end
end
