cask 'xscope' do
  version '4.3.1'
  sha256 '4af5cab62610247b9cca48ef11a6195d96886948b6ba88c195292fb3522ac8d9'

  # iconfactory.com was verified as official when first introduced to the cask
  url "https://iconfactory.com/assets/software/xscope/xScope-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/xScope/appcast.xml',
          checkpoint: '2004f0da9bbe0b84678763014c466e4eef1d8bb50539f0324006bddc2f79754f'
  name 'xScope'
  homepage 'http://xscopeapp.com/'

  app 'xScope.app'

  zap trash: [
               '~/Library/Caches/com.iconfactory.xScope',
               '~/Library/Caches/com.iconfactory.xScope.cache',
               '~/Library/Preferences/com.iconfactory.xScope.plist',
             ]
end
