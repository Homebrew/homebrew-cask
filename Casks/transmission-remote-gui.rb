cask 'transmission-remote-gui' do
  version '5.0.1'
  sha256 'b961aeb244b2519563837745f3475d21379e3da32bae2b3cbb20ca91d1a90d75'

  url "http://downloads.sourceforge.net/sourceforge/transgui/transgui-#{version}.dmg"
  name 'Transmission Remote GUI'
  homepage 'http://sourceforge.net/projects/transgui/'
  license :oss

  pkg 'transgui.pkg'

  uninstall pkgutil: 'com.transgui.*'
end
