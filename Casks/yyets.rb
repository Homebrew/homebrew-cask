cask 'yyets' do
  version '3.1.1'
  sha256 'acc48e3a6c450149262fbdadea5350a176b8e8f79d1da4db282dd690fd8c9af3'

  # appdown.rrys.tv was verified as official when first introduced to the cask
  url "http://appdown.rrys.tv/YYetsShare.#{version}.dmg"
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
