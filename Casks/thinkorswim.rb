class Thinkorswim < Cask
  version :latest
  sha256 :no_check

  url 'https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.dmg'
  homepage 'http://mediaserver.thinkorswim.com/installer/install.html#macosx'
  license :unknown

  installer :manual => 'thinkorswim Installer.app'
end
