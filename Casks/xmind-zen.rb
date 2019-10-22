cask 'xmind-zen' do
  version '9.3.1-201909210108,2019'
  sha256 '2b834f6efbb414f1d717488149c3ea6c903ecfc95f5e4eb5e82e232d4c87c5db'

  url "https://dl3.xmind.net/XMind-ZEN-Update-#{version.after_comma}-for-macOS-#{version.before_comma}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
