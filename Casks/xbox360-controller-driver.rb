class Xbox360ControllerDriver < Cask
  url 'http://files.tattiebogle.net/360/360ControllerInstall.dmg'
  homepage 'http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver'
  version 'latest'
  sha256 :no_check
  install 'Install360Controller.pkg'
  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
