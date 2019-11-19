cask 'ui-browser' do
  version '2.9.0'
  sha256 '374df781499a3f3c28ce1c12654a14febe0da0fdcc4674670a103b0a744f1ee0'

  url "https://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  appcast 'https://pfiddlesoft.com/uibrowser/index-downloads.html'
  name 'UI Browser'
  homepage 'https://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*',
               '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
             ]
end
