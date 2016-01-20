cask 'turbo-boost-switcher' do
  version '1.2.0'
  sha256 'c1b42d0aac3114a0bef8bfcdbfc948387738fd333210e58563c0c161d29dcb9a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/turbo-boost-switcher/TurboBoostSwitcherv#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'
  license :gpl

  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap delete: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
