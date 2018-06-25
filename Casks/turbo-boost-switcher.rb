cask 'turbo-boost-switcher' do
  version '2.7.0'
  sha256 'b19ee25afc80bc9bad72c09fe3c7b1104817045d56bb6cedba3d0478619ab9db'

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
