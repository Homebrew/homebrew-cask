cask 'xmind-zen' do
  version '10.0.1-202001022222'
  sha256 'e2f5a7b7258bb319491a91c4d93d86217e5e1d313a9ff8e9f6dbc9d9ae65e260'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
