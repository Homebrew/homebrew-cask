cask 'upic' do
  version '0.5.1'
  sha256 'd6c9eaf451cc0aedaa5304b47f96af26a20349c7c4fd547ea68a7bd861b33abd'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic_v#{version}.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  app 'UPic.app'

  zap trash: '~/Library/Preferences/com.svend.uPic.plist'
end
