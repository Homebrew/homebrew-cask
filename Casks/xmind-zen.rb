cask 'xmind-zen' do
  version '10.1.2-202004061853'
  sha256 '7a0b30516736cfc7e5ea43abe1197cf5ad3c0f441d58402bae5600c127edcf62'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
