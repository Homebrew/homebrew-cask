cask 'ui-browser' do
  version '2.9.1'
  sha256 'dc5d140f1e3f7f3390039a97a761bced80b9e9d56769092ad3746a3de1f75cfd'

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
