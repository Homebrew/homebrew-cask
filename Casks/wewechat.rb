cask 'wewechat' do
  version '1.1.5'
  sha256 'c4942bf6e325dc1d914602013315ce9f2a943b93c9ec48ec7c3f052f4d88f11e'

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: '1d96bec4f18c88a3385ff9679ddb624d48a718bff38c50cb879fe2f15c7e500c'
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
