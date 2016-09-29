cask 'zxpinstaller' do
  version '1.5.0'
  sha256 'fe54a02b891c99d4452f723447166e2d1da0c3a47a3ebe7b9762ed2243963ba4'

  url "https://github.com/CreativeDo/ZXPInstaller/releases/download/#{version}/ZXPInstaller.dmg"
  name 'ZXPInstaller'
  homepage 'http://zxpinstaller.com'
  license :gpl

  app 'ZXPInstaller.app'
end
