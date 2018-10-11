cask 'turbo-boost-switcher' do
  version '2.7.1'
  sha256 'bee6b86d2813c76fe65cac57cf76966b2f613c6fd48fb5418a01e0d1dbb89b64'

  # s3.amazonaws.com/turbo-boost-switcher was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/turbo-boost-switcher/Turbo+Boost+Switcher_#{version}.zip"
  name 'Turbo Boost Switcher'
  homepage 'https://www.rugarciap.com/turbo-boost-switcher-for-os-x/'

  # App renamed to remove "(English)" suffix
  app 'Turbo Boost Switcher.app'

  uninstall quit:       'rugarciap.com.Turbo-Boost-Switcher',
            kext:       'com.rugarciap.DisableTurboBoost',
            login_item: 'Turbo Boost Switcher'

  zap trash: '~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist'
end
