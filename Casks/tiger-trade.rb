cask 'tiger-trade' do
  version '5.3.0,20191218:B9DE81'
  sha256 '1d990eb94ddddbf696cb3933f11ec7386646b3f327d4173216275078a71c2d85'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
