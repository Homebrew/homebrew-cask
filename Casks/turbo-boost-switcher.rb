cask 'turbo-boost-switcher' do
  version '2.5.0'
  sha256 '7d52727d1b99dc12fa6c151ccd75bd7630e3a88b8927652a34d1d013dd5f3d52'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo+Boost+Switcher_#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  # App renamed to remove "(English)" suffix
  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap delete: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
