cask 'ui-browser' do
  version '2.7.0'
  sha256 '0974aaf84862600383a64ec7ddf95ee8f0d0c623f5d07479f624fee864034425'

  url "http://pfiddlesoft.com/uibrowser/downloads/UIBrowser#{version.no_dots}.dmg"
  name 'UI Browser'
  homepage 'http://pfiddlesoft.com/uibrowser/'

  depends_on macos: '>= :lion'

  app 'UI Browser.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.pfiddlesoft.uibrowser.help*',
               '~/Library/Preferences/com.pfiddlesoft.uibrowser.plist',
             ]
end
