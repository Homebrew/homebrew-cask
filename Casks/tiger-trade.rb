cask 'tiger-trade' do
  version '5.6.3,20200409:3E708C'
  sha256 'd1056c280ef73996f863e93350a5e76bd0f4aebd5074034ce1073b17382eec83'

  # s.tigerfintech.com/ was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  appcast 'https://up.play-analytics.com/app/upgrade/latest?lang=zh_CN&platform=darwin&appVer=1'
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/download/mac'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
