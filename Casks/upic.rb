cask 'upic' do
  version '0.19.5'
  sha256 '8c6a69349641b6b25379e93657de89a0478ddd6d9716001a309b1346e6446505'

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
