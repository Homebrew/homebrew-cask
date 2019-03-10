cask 'xlplayer' do
  version '2.0.1.1249'
  sha256 '7d39760d50ac8d2d3c7f0827ca6ebb31c319ed3447a2605d3c152ce3980508fa'

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
