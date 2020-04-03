cask 'xmind-zen' do
  version '10.1.1-202003310026'
  sha256 '84e81da8da85ef35f6bb6aab5b601c30f847970efbaafc3bb3cb1948ce1356e4'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
