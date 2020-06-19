cask 'yyets' do
  version '3.2.7'
  sha256 'a23306f3e53ea4672e525cfc9f46862b0ba473a258c0e48e5ef6fecd29a7b855'

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
