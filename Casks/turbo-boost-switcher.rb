cask 'turbo-boost-switcher' do
  version '2.9.0'
  sha256 '8847db3889f5a9fd6ec9fa756721fb05fccb0b78d69b984438a1c0b582d4a758'

  # turbo-boost-switcher.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo+Boost+Switcher_#{version}.zip"
  appcast 'https://www.rugarciap.com/turbo-boost-switcher-for-os-x/'
  name 'Turbo Boost Switcher'
  homepage 'https://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  # App renamed to remove "(English)" suffix
  app 'Turbo Boost Switcher.app'

  uninstall quit: 'rugarciap.com.Turbo-Boost-Switcher',
            kext: 'com.rugarciap.DisableTurboBoost'

  zap trash: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
