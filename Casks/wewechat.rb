cask 'wewechat' do
  version '1.1.4'
  sha256 '80a6155085f1dfe5685610e4ff84a6bc60d297787578dba22a5f8991a82255b3'

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: 'a2bce12704796cc87a98a58271c271b942b40af2fc86bbbc89b352d0eb6d7d82'
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
