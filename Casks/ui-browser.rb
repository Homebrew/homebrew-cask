cask 'ui-browser' do
  version '2.8.0'
  sha256 '4ce26e6b10223b3216148af7a81e79ee6eb4fb8e04621484b8b78c56b61c5c00'

  url "https://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'https://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*',
               '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
             ]
end
