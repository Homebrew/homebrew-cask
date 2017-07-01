cask 'veracrypt' do
  version '1.20'
  sha256 '63b186cd9d117a13bf249445b9d0551391babf12512a974978baf44a65bcfd37'

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom',
          checkpoint: '9b200f08d719ba486a9bc732c35b45ef945291e788cf98ea8a0e664fd1d35ad6'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
