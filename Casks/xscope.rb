cask 'xscope' do
  version '4.4.1'
  sha256 'dbbc939eca01ac8dc9994f5bd81130fbf980bdd6c9e66f23cf51fa585c8c0729'

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
