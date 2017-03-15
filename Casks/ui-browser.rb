cask 'ui-browser' do
  version '2.6.1'
  sha256 'db4e3a4812a8b980226edd40ae4d88a0168e35829d4f4bff44435250183712cc'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help',
                '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
              ]
end
