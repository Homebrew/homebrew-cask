cask 'xmind-zen' do
  version 'Update3'
  sha256 '3de528711ab6b59df46d69c908a788dfda32fdc2b6e1a117b9a93332dae664fa'

  url "https://dl3.xmind.net/XMind-ZEN-#{version}-for-macOS.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
