cask 'xscope' do
  version '4.3'
  sha256 '5e8bb057ba1b0b784115b2f2bfda5eb4fbf20d0e06c4e41099329fd3d76c6899'

  # iconfactory.com was verified as official when first introduced to the cask
  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          checkpoint: '988707f08e959e814744795696be1548a4bb615b43a45b24ea4bc63ec93cc646'
  name 'xScope'
  homepage 'http://xscopeapp.com/'

  app 'xScope.app'

  zap trash: [
               '~/Library/Caches/com.iconfactory.xScope',
               '~/Library/Caches/com.iconfactory.xScope.cache',
               '~/Library/Preferences/com.iconfactory.xScope.plist',
             ]
end
