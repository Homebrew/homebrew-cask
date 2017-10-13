cask 'wewechat' do
  version '1.1.4'
  sha256 'bcd11208cfe037113c1efcc6eb156ac3e3998dcd8e8b444d0ccc0ea2aa1cc9ec'

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: '85e0487a2b87cccd891439f2f72d1ce77a31cf1c2b0d1ccad9b16cc6dcb0d18a'
  name 'weweChat'
  homepage 'https://github.com/trazyn/weweChat'

  app 'weweChat.app'

  zap delete: '~/Library/Saved Application State/gh.trazyn.wewechat.savedState',
      trash:  [
                '~/Library/Application Support/wewechat',
                '~/Library/Preferences/gh.trazyn.wewechat.helper.plist',
                '~/Library/Preferences/gh.trazyn.wewechat.plist',
              ]
end
