cask 'upic' do
  version '0.19.4'
  sha256 '090ff453b2d07e550f0d65b477facab11573be727c9e74d7b1c21fe048960eb3'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.zip"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  depends_on macos: '>= :sierra'

  app 'uPic.app'

  zap trash: [
               '~/Library/Preferences/com.svend.uPic.plist',
               '~/Library/Caches/com.svend.uPic',
             ]
end
