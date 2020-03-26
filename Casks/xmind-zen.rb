cask 'xmind-zen' do
  version '10.1.0-202003240018'
  sha256 'a155e2761674b2f5c5bc01ccdf15b439456a938db9a93184c7902b36ac825cd7'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
