cask 'younity' do
  version '1.13.9'
  sha256 '5b387311044c18366beb43dc368a7bba3d8546fe35a3f8970384eaa78397bed7'

  url 'http://downloads.getyounity.com/files/younityInstaller.dmg'
  name 'Younity'
  homepage 'https://getyounity.com/home-media-server'

  pkg "younityInstaller-#{version}.pkg"

  uninstall pkgutil: 'net.entangledmedia.younity.client.YounityClient'
end
