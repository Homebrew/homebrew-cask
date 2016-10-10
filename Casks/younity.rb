cask 'younity' do
  version '1.12.6'
  sha256 '7bd7717c9795014e28701f2e9ae8b71533ab093c0683890cf6996401834304fc'

  url 'http://downloads.getyounity.com/files/younityInstaller.dmg'
  name 'Younity'
  homepage 'https://getyounity.com'

  pkg "younityInstaller-#{version}.pkg"

  uninstall pkgutil: 'net.entangledmedia.younity.client.YounityClient'
end
