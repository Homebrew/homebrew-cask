cask 'veracrypt' do
  version '1.24'
  sha256 '39feff25b34b75f13a9200d45aa598dc3463129eb6d1684b6403d3fb30a81ac0'

  # launchpad.net/veracrypt/trunk was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
