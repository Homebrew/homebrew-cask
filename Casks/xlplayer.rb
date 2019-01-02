cask 'xlplayer' do
  version '1.8.0.1210'
  sha256 '34a47f40a38b78840bedfa2a1464226573a538c5bdf6c911f99b620bd5cbb322'

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
