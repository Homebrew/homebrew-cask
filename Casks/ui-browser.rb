cask 'ui-browser' do
  version '2.8.2'
  sha256 'b789af0a857ff18b1550ca833e75d970ef5c43fff77a378c549c489dcbf6a738'

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
