class Uninstallpkg < Cask
  version '1.0.5'
  sha256 '199cbae47644572aade93bb81a152934178016da7cf90f3c7136b36d4819e752'
  
  url 'http://www.corecode.at/downloads/uninstallpkg_1.0.5.zip'
  appcast 'http://www.corecode.at/uninstallpkg/uninstallpkg.xml'
  homepage 'http://www.corecode.at/uninstallpkg/'

  link 'UninstallPKG.app'
end
