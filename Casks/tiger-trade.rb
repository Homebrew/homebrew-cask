cask 'tiger-trade' do
  version '5.1.1,20191108:A91865'
  sha256 '6e110ecff8c9239847c9be6ef13365da1c5b7c7a0dbf6863e952c040d07edaff'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
