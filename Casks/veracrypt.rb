cask 'veracrypt' do
  version '1.23'
  sha256 '8c5ba5e8a19de5a33461f3cd84617140736d7cb38e306d0ac4b1c058940227f3'

  # launchpad.net/veracrypt/trunk was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
