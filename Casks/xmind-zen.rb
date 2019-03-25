cask 'xmind-zen' do
  version '9.1.3.201812042238,2019'
  sha256 '68dcf20756552a1219a28a7dd153725d162d5e3205bf0d4a86428bf1839a1959'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-Update-#{version.after_comma}-for-macOS-#{version.before_comma}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
