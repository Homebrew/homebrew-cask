cask 'zxpinstaller' do
  version '1.5.0'
  sha256 'fe54a02b891c99d4452f723447166e2d1da0c3a47a3ebe7b9762ed2243963ba4'

  # github.com/CreativeDo/ZXPInstaller was verified as official when first introduced to the cask
  url "https://github.com/CreativeDo/ZXPInstaller/releases/download/#{version}/ZXPInstaller.dmg"
  appcast 'https://github.com/CreativeDo/ZXPInstaller/releases.atom',
          checkpoint: '184cceb310724f604287b91c59d0781983209a653ebef88ba5c285ea4c624b3b'
  name 'ZXPInstaller'
  homepage 'http://zxpinstaller.com/'

  app 'ZXPInstaller.app'

  zap delete: '~/Library/Preferences/com.electron.zxpinstaller.plist'
end
