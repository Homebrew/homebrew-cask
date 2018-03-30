cask 'veracrypt' do
  version '1.22'
  sha256 'c72257380f5653e6130d4efdd88297b328f29819f4bad82f5563cb906679e2b7'

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version}/+download/VeraCrypt_#{version}.dmg"
  appcast 'https://github.com/veracrypt/VeraCrypt/releases.atom',
          checkpoint: '45f2781dc568f6801994fe77ff2492296622e7437c12594f667f71a9335d08c9'
  name 'VeraCrypt'
  homepage 'https://www.veracrypt.fr/'

  depends_on cask: 'osxfuse'

  pkg 'VeraCrypt_Installer.pkg'

  uninstall pkgutil: 'com.idrix.pkg.veracrypt'
end
