cask 'tiger-trade' do
  version '5.0.8,20190925:8D2D23'
  sha256 'd369cb94ef186eec6a5654aea0ed45891264050e3b15f53cc3dd1780b490ca19'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
