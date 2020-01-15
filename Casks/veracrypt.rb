cask 'veracrypt' do
  version '1.24-Update2'
  sha256 'a19fb3897a74e5eac557f3e4442c6e450879b34ac3ab631976a306c4bfdc3258'

  # launchpad.net/veracrypt/trunk was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version.downcase}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
