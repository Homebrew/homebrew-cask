cask 'ui-browser' do
  version '2.6.0'
  sha256 '1240a8a181e896e9fd8ef360f2dbc879ac3566d68d3933c7f5a1e9485a3cbd75'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help',
                '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
              ]
end
