cask 'yyets' do
  version '2.55'
  sha256 '3ac6d420585003160ce3e4053c749502c8e034c2c63f34dcecb30b180e768e2d'

  # appdown.rrys.tv was verified as official when first introduced to the cask
  url "http://appdown.rrys.tv/YYetsShare.#{version}.dmg"
  name 'YYeTs'
  name '人人影视'
  homepage 'http://app.zimuzu.io/'

  app '人人影视.app'

  zap trash: [
               '~/Library/Application Support/人人影视',
               '~/Library/Caches/人人影视',
               '~/Library/Preferences/com.yyets.rrshare.人人影视.plist',
             ]
end
