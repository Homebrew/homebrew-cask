cask 'veracrypt' do
  version '1.21'
  sha256 'cbd3f80eca753edce40be134ccbd288805c93643b21d8cf21fd72c0fd544f377'

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom',
          checkpoint: 'fffe46cc3d4758cb1066693e84a4349a2b9c618700571541c446959adc7a95da'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
