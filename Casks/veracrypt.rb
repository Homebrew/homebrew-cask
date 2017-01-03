cask 'veracrypt' do
  version '1.19'
  sha256 'da098bba200d2cebb193bd699eef6dec7834c8eeb579ed40bcd21d45487e6ce7'

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  name 'VeraCrypt'
  homepage 'https://veracrypt.codeplex.com/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
