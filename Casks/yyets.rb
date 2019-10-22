cask 'yyets' do
  version '3.2.1'
  sha256 '891b1bb213f1b22dea53dfef09d308666e0d4c08f7830a609b85ad7ed3d9e814'

  url "http://appdown.rrys.tv/RRShare_#{version}.dmg"
  appcast 'http://app.rrys.tv/'
  name 'YYeTs'
  name '人人影视'
  homepage 'http://app.rrys.tv/'

  app '人人影视.app'

  zap trash: [
               '~/Library/Application Support/人人影视',
               '~/Library/Caches/人人影视',
               '~/Library/Preferences/com.yyets.rrshare.人人影视.plist',
             ]
end
