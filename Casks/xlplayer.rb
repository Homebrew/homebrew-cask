cask 'xlplayer' do
  version '1.7.0.1184'
  sha256 '901c35c16b7d0dbf2b3fa5e40f1197f57f472a3ecbf128df8fa0fa105e973ced'

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
