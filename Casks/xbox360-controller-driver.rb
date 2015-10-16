cask :v1 => 'xbox360-controller-driver' do
  version :latest
  sha256 :no_check

  url 'http://files.tattiebogle.net/360/360ControllerInstall.dmg'
  name 'XBox 360 controller driver'
  homepage 'http://tattiebogle.net/index.php/ProjectRoot/Xbox360Controller/OsxDriver'
  license :gpl

  pkg 'Install360Controller.pkg'

  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
