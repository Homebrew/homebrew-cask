class Xbox360ControllerDriver < Cask
  url 'http://files.tattiebogle.net/360/360ControllerInstall.0.12.dmg'
  homepage 'http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver'
  version '0.12'
  sha1 '933bd56e077a68c6517decd2758638c69452cd26'
  install 'Install360Controller.pkg'
  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
