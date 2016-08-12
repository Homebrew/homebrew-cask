cask 'younity' do
  version '1.12.6'
  sha256 :no_check

  url 'http://downloads.getyounity.com/files/younityInstaller.dmg'
  name 'Younity'
  homepage 'https://getyounity.com'
  license :gratis # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'younityInstaller-#{version}.pkg'

  uninstall pkgutil: 'net.entangledmedia.younity.client.YounityClient'
end
