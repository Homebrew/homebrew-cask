cask 'upic' do
  version '0.8.0'
  sha256 '8a9a81f7e05398126e99b6607fc2ae30630bd7c58f4b9112c636bbebdfa102a3'

  url "https://github.com/gee1k/uPic/releases/download/v#{version}/uPic.dmg"
  appcast 'https://github.com/gee1k/uPic/releases.atom'
  name 'uPic'
  homepage 'https://github.com/gee1k/uPic'

  depends_on macos: '>= :sierra'

  app 'UPic.app'

  zap trash: [
               '~/Library/Caches/com.svend.uPic',
             ]
end
