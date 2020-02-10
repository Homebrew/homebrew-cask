cask 'yyets' do
  version '3.2.1'
  sha256 'c21bbb24885cec37671ee9dfaf3a66733338c3a75978a9b85643a2297e296802'

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
