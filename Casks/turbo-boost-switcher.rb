cask 'turbo-boost-switcher' do
  version '2.6.1'
  sha256 '2eb8136587a9beeb769cb47f28e433429bd1efc97730b1927cf7c796335a3e19'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo+Boost+Switcher_#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  # App renamed to remove "(English)" suffix
  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap trash: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
