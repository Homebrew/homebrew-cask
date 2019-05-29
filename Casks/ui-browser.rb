cask 'ui-browser' do
  version '2.8.1'
  sha256 '44ba5a768871f6b3bc3a7836ac1fb121e2bed0f59df55885b6e133e1c5c99b51'

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
