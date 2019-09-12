cask 'xmind-zen' do
  version '9.3.0-201909090143,2019'
  sha256 'ab6a7aa655d3161eee7605e10626317f4f5629da21d85a1570af19096150bd51'

  url "https://dl3.xmind.net/XMind-ZEN-Update-#{version.after_comma}-for-macOS-#{version.before_comma}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
