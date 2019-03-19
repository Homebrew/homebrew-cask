cask 'turbo-boost-switcher' do
  version '2.8.0'
  sha256 '4b943962906236ac793ee140897a66415921d3934a1b5ec37ffe0a38a9c9cab3'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo+Boost+Switcher_#{version}.zip"
  appcast 'https://www.rugarciap.com/turbo-boost-switcher-for-os-x/'
  name 'Turbo Boost Switcher'
  homepage 'https://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  # App renamed to remove "(English)" suffix
  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap trash: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
