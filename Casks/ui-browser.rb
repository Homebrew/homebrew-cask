cask 'ui-browser' do
  version '2.9.0'
  sha256 'b3ab919c2f3a6ae2c16f111b12bc566aa32f2f8a6bc7a3170d33d94dd561703d'

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
