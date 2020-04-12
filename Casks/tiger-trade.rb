cask 'tiger-trade' do
  version '5.5.0,20200310:2F5538'
  sha256 '22c10c8d9bbd807f2e48cebd8e3ef05a4743c838067d8f05820eaa676cd1c1f2'

  # s.tigerfintech.com was verified as official when first introduced to the cask
  url "https://s.tigerfintech.com/desktop/cdn/f/TigerTrade_#{version.before_comma}_#{version.after_comma.before_colon}_#{version.after_colon}.dmg"
  name 'Tiger Trade'
  name '老虎证券'
  homepage 'https://www.itiger.com/'

  depends_on macos: '>= :sierra'

  app 'Tiger Trade.app'
end
