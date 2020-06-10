cask 'upic' do
  version '0.19.2'
  sha256 '4ac2feec347a601277d06d4cbf339149f1b988f11d396788dfb28634ee7ec25f'

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
