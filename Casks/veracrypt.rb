cask 'veracrypt' do
  version '1.24'
  sha256 '5515766ebac14dcc3e397f0afd24f31f998a4a3c69571ea40b990772fede679c'

  # launchpad.net/veracrypt/trunk was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}-hotfix1/+download/VeraCrypt_#{version}-Hotfix1.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
