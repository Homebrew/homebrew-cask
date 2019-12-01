cask 'xlplayer' do
  version '2.0.5.1285'
  sha256 '80136420cf7e38279af00009ca487b131ae82a7031964488d907287ae2b855a6'

  # down.sandai.net was verified as official when first introduced to the cask
  url "http://down.sandai.net/mac/xlplayer_#{version}.dmg"
  appcast 'https://video.xunlei.com/mac.html'
  name 'XLPlayer for Mac'
  name '迅雷影音 for Mac'
  homepage 'https://video.xunlei.com/mac.html'

  depends_on macos: '>= :yosemite'

  app 'XLPlayer.app'

  zap trash: [
               '~/Library/Application Support/XLPlayer',
               '~/Library/Caches/com.xunlei.XLPlayer',
               '~/Library/Preferences/com.xunlei.XLPlayer.plist',
               '~/Library/Saved Application State/com.xunlei.XLPlayer.savedState',
             ]
end
