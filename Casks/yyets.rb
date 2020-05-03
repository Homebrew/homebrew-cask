cask 'yyets' do
  version '3.2.2'
  sha256 'dd0d1c9ad5f8550c06328f85d7249877e2ffa76ee2c99960c6d760b903c8c708'

  url "http://appdown.rrys.tv/RRShare#{version}.dmg?"
  appcast 'http://tj.playcvn.com/app/init?platform=5'
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
