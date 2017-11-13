cask 'ui-browser' do
  version '2.6.3'
  sha256 '1a78045ab21da512f15f7203fa430cff61592aadb17cbdc0bc4aaf734412dac1'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser/'

  app 'UI Browser.app'

  zap delete: [
                '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*',
                '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
              ]
end
