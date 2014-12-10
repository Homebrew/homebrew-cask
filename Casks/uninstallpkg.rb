cask :v1 => 'uninstallpkg' do
  version '1.0.7'
  sha256 '6f5b88434635afe3eee07dcd0b183f00233ccd089ba0c45e3c4a3c8ddaa1fa4a'

  url "http://www.corecode.at/downloads/uninstallpkg_#{version}.zip"
  appcast 'http://www.corecode.at/uninstallpkg/uninstallpkg.xml',
          :sha256 => '5f5de8cb9ee55d7c96582f7359a41c9530170f589f45bdad5ee3f04dd22c829d'
  homepage 'http://www.corecode.at/uninstallpkg/'
  license :unknown    # todo: improve this machine-generated value

  app 'UninstallPKG.app'
end
