cask 'tiger-trade' do
  version '5.3.1,20191224:BACCCE'
  sha256 '34153f46fc100964934cdadc0a4ea751315d270da0834e4b8324f07d730b0797'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
