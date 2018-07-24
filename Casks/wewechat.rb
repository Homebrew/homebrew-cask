cask 'wewechat' do
  version '1.1.6'
  sha256 '346f187e8191ff04210c87bc9e6cca8c5009ba09499958f1efe7f8047e75178e'

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom'
  name 'weweChat'
  homepage 'https://github.com/trazyn/weweChat'

  app 'weweChat.app'

  zap trash: [
               '~/Library/Application Support/wewechat',
               '~/Library/Preferences/gh.trazyn.wewechat.helper.plist',
               '~/Library/Preferences/gh.trazyn.wewechat.plist',
               '~/Library/Saved Application State/gh.trazyn.wewechat.savedState',
             ]
end
