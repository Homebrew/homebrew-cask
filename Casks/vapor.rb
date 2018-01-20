cask 'vapor' do
  version '2.6.0'
  sha256 '0608952d436550bb22d692cef43087c2ed3d96fa09b5b13eaaedf24143ddd5c6'

  url "https://www.vapor.ucar.edu/sites/default/files/attachments/vapor-#{version}-Darwin_x86_64.dmg"
  name 'VAPOR'
  homepage 'https://www.vapor.ucar.edu/'

  pkg 'vapor.pkg'

  uninstall pkgutil: 'edu.ucar.ncar.vapor.pkg'
end
