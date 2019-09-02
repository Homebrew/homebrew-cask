cask 'xmind-zen' do
  version '9.2.1-201906120058,2019'
  sha256 'a9ab7496256a2dfc9b96cc2d26dca41a93b566e8e47e674ac7539a3510d982a7'

  url "https://dl3.xmind.net/XMind-ZEN-Update-#{version.after_comma}-for-macOS-#{version.before_comma}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
