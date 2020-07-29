cask 'yyets' do
  version '3.2.5'
  sha256 '6a7f508a79d1c7888349e0c6241ada4293fe879183f202645d8fe0f2c1c5b27c'

  url "http://appdown.rrys.tv/RRShare_#{version}.dmg"
  appcast 'http://app.rrys.tv/'
  name 'YYeTs'
  name '人人影视'
  homepage 'http://app.rrys.tv/'

  app '人人影视.app'

  zap trash: [
               '~/Library/Application Support/rrshare',
               '~/Library/Caches/人人影视',
               '~/Library/Preferences/com.yyets.rrshare.人人影视.plist',
               '~/Library/Saved Application State/com.yyets.RRShare.savedState',
             ]
end
