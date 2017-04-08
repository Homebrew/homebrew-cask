cask 'ui-browser' do
  version '2.6.2'
  sha256 'bb43a84913d98576197645ec5214eadf2b86a11ece5d4bdb591c38e8d689dafb'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help',
                '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
              ]
end
