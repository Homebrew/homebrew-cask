cask 'wewechat' do
  version '1.1.0'
  sha256 'd897d4d6f5d9b2df0ca389cd8859706d8bc0a1dddd71e113f21d3dc0ca768fdc'

  url "https://github.com/trazyn/weweChat/releases/download/#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: 'caec33e889455a1f32e7805b9011ec7aaa47ddc0d1caff3f297869db5002e04f'
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
