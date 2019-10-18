cask 'tiger-trade' do
  version '5.0.9,20191011:9A4C87'
  sha256 '2a816e0b240276437ab04b61b5ff2d9a3ecb219a17638493ebada9f3757d2079'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
