cask 'zxpinstaller' do
  version '1.6.2'
  sha256 '94202eea57c9c87c67a40514cdee1d1b9cb3680e7be32f3086115b4e80a50aca'

  # github.com/CreativeDo/ZXPInstaller was verified as official when first introduced to the cask
  url "https://github.com/CreativeDo/ZXPInstaller/releases/download/#{version}/ZXPInstaller.dmg"
  appcast 'https://github.com/CreativeDo/ZXPInstaller/releases.atom'
  name 'ZXPInstaller'
  homepage 'http://zxpinstaller.com/'

  app 'ZXPInstaller.app'

  zap trash: '~/Library/Preferences/com.electron.zxpinstaller.plist'
end
