cask 'upic' do
  version '0.19.3'
  sha256 'be47e850363de2d872bdea867887ec6ee305dcc8c992bff021f0cbfb45c1b4d0'

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
