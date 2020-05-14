cask 'yyets' do
  version '3.2.2'
  sha256 '3d45291ea48a234fe838c18c9253b3be4c97a0dca351e86287fe8a7bd41bf3aa'

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
