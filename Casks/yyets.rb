cask 'yyets' do
  version '3.2.7'
  sha256 '84cc5d0b4ac9eab243da4a6a62bc64c35e9a99e62b6770ffbbf153bff0cee29b'

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
