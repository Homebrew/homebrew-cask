cask 'tiger-trade' do
  version '5.9.0,20200610:5D1CD2'
  sha256 '92b2a4756894d7f7fcf76a53dd2581a2457edd9fa6a8093669c18b3bf1cbcdf1'

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast 'https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1'
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/download/mac'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
