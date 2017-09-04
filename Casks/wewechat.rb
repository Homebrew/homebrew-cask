cask 'wewechat' do
  version '1.1.0'
  sha256 'd897d4d6f5d9b2df0ca389cd8859706d8bc0a1dddd71e113f21d3dc0ca768fdc'

  url "https://github.com/trazyn/weweChat/releases/download/#{version}/weweChat-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/weweChat/releases.atom',
          checkpoint: 'b5208df52528a359ba47cbb6d1a6a67bd12683fd1d25ceb9537f62e25a6be7e0'
  name 'weweChat'
  homepage 'https://github.com/trazyn/weweChat'

  app 'weweChat.app'
end
