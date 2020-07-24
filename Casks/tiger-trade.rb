cask 'tiger-trade' do
  version '5.11.0,20200722:6E3367'
  sha256 'b67b6f302f7b92add23f9755a25e135e5ee5aee03529a65e42d2e08f2724d7d2'

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast 'https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1'
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/download/mac'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
