cask 'upic' do
  version '0.10.2'
  sha256 'a212f4f12abf025c192551e0994826be812ed59cd8077557f305b85191978aca'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  depends_on macos: '>= :sierra'

  app 'UPic.app'

  zap trash: [
               '~/Library/Preferences/com.svend.uPic.plist',
               '~/Library/Caches/com.svend.uPic',
             ]
end
