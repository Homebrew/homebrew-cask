cask 'wewechat' do
  version '1.1.2'
  sha256 'ad9835ec073888d479e781eba74a59ede016ee80475441e1a44c17b2054f278f'

  url "https://github.com/trazyn/weweChat/releases/download/v#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: '5be045a9fb4b117bd7b9d7cafaa78752be5ef9ee850942bcb2f40841b6c92906'
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
