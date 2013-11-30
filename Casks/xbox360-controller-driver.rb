class Xbox360ControllerDriver < Cask
  url 'http://files.tattiebogle.net/360/360ControllerInstall.dmg'
  homepage 'http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver'
  version 'latest'
  no_checksum
  install 'Install360Controller.pkg'
  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
