cask 'xlplayer' do
  version '2.0.3.1265'
  sha256 'fbdf478d9dcaa7aba0f1cf7c212993edd0af7ba9a520e4ae4dd84ccf843690c0'

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
