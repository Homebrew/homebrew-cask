cask 'upic' do
  version '0.12.4'
  sha256 '2afc820774b7eb36e26f8f0d367de51abf7f1ca74ff9a16c9dbbade6f1439911'

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
