cask 'xmind-zen' do
  version '9.2.0-201904242030,2019'
  sha256 '1cee4c18b0a39ea04238f6e4ed272df6663bbbc471a9cbeac7cae705e24d3af2'

  url "https://dl3.xmind.net/XMind-ZEN-Update-#{version.after_comma}-for-macOS-#{version.before_comma}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
