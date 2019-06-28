cask 'upic' do
  version '0.6.1'
  sha256 'e018a0c61d17b500b8bf79ff5672fa47994e7aaa015526983247a112fcbfa2f5'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  app 'UPic.app'

  zap trash: [
               '~/Library/Preferences/com.svend.uPic.plist',
               '~/Library/Caches/com.svend.uPic',
             ]
end
