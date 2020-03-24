cask 'xmind-zen' do
  version '10.1.0-202003232119'
  sha256 'ada229e4acf8a4b853ce47af8cd1d14fecbbc1a7600b074fbc4eb880d6dee6ee'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
