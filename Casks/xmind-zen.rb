cask 'xmind-zen' do
  version '10.0.0-201911180024'
  sha256 '344b209c5ce399751aa7fafd3c8b313e5bf9d5f8da8208a55e7582d348627806'

  url "http://dl2.xmind.net/xmind-downloads/XMind-ZEN-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
