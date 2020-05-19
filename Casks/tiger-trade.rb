cask 'tiger-trade' do
  version '5.7.0,20200429:4175FA'
  sha256 'e46fe10cb58efd073ab3139c48703b155155115fa3a0428d00044ee855094d82'

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast 'https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1'
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/download/mac'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
