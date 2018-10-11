cask 'xscope' do
  version '4.3.2'
  sha256 '106959567a58a49e84b09b21708d38569df93b0286e713777527cb5ddba5d01f'

  # iconfactory.com was verified as official when first introduced to the cask
  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml'
  name 'xScope'
  homepage 'https://xscopeapp.com/'

  app 'xScope.app'

  zap trash: [
               '~/Library/Caches/com.iconfactory.xScope',
               '~/Library/Caches/com.iconfactory.xScope.cache',
               '~/Library/Preferences/com.iconfactory.xScope.plist',
             ]
end
