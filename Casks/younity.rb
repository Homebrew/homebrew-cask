cask 'younity' do
  version '1.12.6'
  sha256 '2b15141fb79f94a68dc14ad0c1c443620de2fa767e1fa95f36bc8d9c2596e6ed'

  url 'http://downloads.getyounity.com/files/younityInstaller.dmg'
  name 'Younity'
  homepage 'https://getyounity.com/home-media-server'

  pkg "younityInstaller-#{version}.pkg"

  uninstall pkgutil: 'net.entangledmedia.younity.client.YounityClient'
end
