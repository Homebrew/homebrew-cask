cask 'tiger-trade' do
  version '5.0.1'
  sha256 'd6799a5576de340a11a768c3591ef2895b3c9d63ecac8cee58881ee6b66050fb'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade-#{version}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
