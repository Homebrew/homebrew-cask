cask 'xmind-zen' do
  version '10.1.3-202005060027'
  sha256 '98cfc281f6be9adfcbe3fc714e8c0effb16e8445e0ca3f9ab73d0b7869b586e1'

  url "https://www.xmind.net/xmind/downloads/XMind-2020-for-macOS-#{version}.dmg"
  appcast 'https://www.xmind.net/download/'
  name 'XMind'
  homepage 'https://www.xmind.net/zen/'

  app 'XMind.app'

  zap trash: '~/Library/Application Support/XMind ZEN'
end
