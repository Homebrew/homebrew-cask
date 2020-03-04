cask 'xmind-zen' do
  version '10.0.2-202002120210'
  sha256 '80b3eb8b32aade6dacfa0e5ed47ec8b1b424c1811d96a75be56730346bbc166d'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
