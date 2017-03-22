cask 'turbo-boost-switcher' do
  version '2.4.0'
  sha256 'ae7cab0ecbf750becf438d45104e20b7332788d9479cc1bf7b1d1dc6a91a10d7'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo+Boost+Switcher_#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  app 'Turbo Boost Switcher (English).app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap delete: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
