cask 'upic' do
  version '0.6.0'
  sha256 'c9dac6e4a5703b5dcb48d37828ef608ca788d2d927b75fb230a4b80b290501df'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic_v#{version}.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  app 'UPic.app'

  zap trash: '~/Library/Preferences/com.svend.uPic.plist'
end
