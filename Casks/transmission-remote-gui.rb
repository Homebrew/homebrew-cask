cask 'transmission-remote-gui' do
  version '5.0.1'
  sha256 '322de6700ef13ea31ed0376a1783434b5d5660e63d267169f8ed0f8d4caf5f62'

  url "http://downloads.sourceforge.net/sourceforge/transgui/transgui-#{version}.dmg"
  name 'Transmission Remote GUI'
  homepage 'http://sourceforge.net/projects/transgui/'
  license :oss

  pkg 'transgui.pkg'

  uninstall :pkgutil => 'com.transgui.*'
end
