cask 'xmind-zen' do
  version 'Update2'
  sha256 '8b03911b9a81c764e043f6bea33b2c098c7d0269c45aed60f47419939c9dcfd9'

  url "http://dl3.xmind.net/XMind-ZEN-#{version}-for-macOS.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
