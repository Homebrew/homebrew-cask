cask 'xmind-zen' do
  version 'Update1'
  sha256 'f6fd76550af6f6251a100f468a03f9827e2b137127002804eed9d0a62aec2d1d'

  url "http://dl3.xmind.net/XMind-ZEN-#{version}-for-macOS.zip"
  name 'XMind ZEN'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind ZEN.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
