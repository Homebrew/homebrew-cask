cask 'upic' do
  version '0.15.2'
  sha256 'deead2e44eca87746325a3f493cec0d5b1e002428b6199975db494300da25ae6'

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
