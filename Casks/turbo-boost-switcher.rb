cask 'turbo-boost-switcher' do
  version '2.2.0'
  sha256 '60d78611a03e31d535e53545177d65c57f1f16dcee959ecabeb28a2e082698ae'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo_Boost_Switcher_v#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'http://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap delete: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
