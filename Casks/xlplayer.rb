cask 'xlplayer' do
  version '2.0.2.1258'
  sha256 '492911344427b71a47c1b24d51a2ebfde211217ca7b98a94bfa593ec5c2575f1'

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
