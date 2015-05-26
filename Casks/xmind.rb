cask :v1 => 'xmind' do
  version '3.5.2.201504270119'
  sha256 '602dd1d90a41bfa30377881e37f6c5d95de84619cbe8d15755026e07ec1cb1bb'

  url "http://dl3.xmind.net/xmind-macosx-#{version}.dmg"
  name 'XMind'
  homepage 'http://www.xmind.net'
  license :freemium
  tags :vendor => 'XMind'

  zap :delete => [
    '~/Library/XMind',
    '~/Library/Saved Application State/org.xmind.cathy.application.savedState'
  ]

  app 'XMind.app'
end
