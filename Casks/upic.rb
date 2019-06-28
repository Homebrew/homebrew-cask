cask 'upic' do
  version '0.6.1'
  sha256 '8b6254e7c8433d45b0a0598dbb7440bd1eb1e3ef4acef4a4c814158b58c6aa42'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  app 'UPic.app'

  zap trash: '~/Library/Preferences/com.svend.uPic.plist'
end
