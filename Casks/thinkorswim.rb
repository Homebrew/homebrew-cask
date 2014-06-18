class Thinkorswim < Cask
  url 'https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.dmg'
  homepage 'http://mediaserver.thinkorswim.com/installer/install.html#macosx'
  version 'latest'
  sha256 :no_check
  caveats do
    manual_installer 'thinkorswim Installer.app'
  end
end
