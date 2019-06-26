cask 'yyets' do
  version '3.1.1'
  sha256 'a8a150d0648001bbf107dd9e1fcf9d904bd447802bdbde4fcf49c2452afa6d76'

  url "http://appdown.rrys.tv/YYetsShare.#{version}.dmg"
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
