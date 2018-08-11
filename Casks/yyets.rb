cask 'yyets' do
  version '2.54'
  sha256 'bfa6f664935a2dbe34222e850084487c1ffd7715821ac7cc81dca16fdebe1042'

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
