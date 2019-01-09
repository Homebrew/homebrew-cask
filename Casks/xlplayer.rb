cask 'xlplayer' do
  version '2.0.0.1234'
  sha256 '37171139b51c47019b20f61d8350a98a09a048a622b8ea1b9899ec3fe52b85a3'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/xlplayer_#{version}.dmg"
  name 'XLPlayer for Mac'
  name '迅雷影音 for Mac'
  homepage 'http://video.xunlei.com/mac.html'

  depends_on macos: '>= :yosemite'

  app 'XLPlayer.app'

  zap trash: [
               '~/Library/Application Support/XLPlayer',
               '~/Library/Caches/com.xunlei.XLPlayer',
               '~/Library/Preferences/com.xunlei.XLPlayer.plist',
               '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
             ]
end
