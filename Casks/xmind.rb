cask :v1 => 'xmind' do
  version '3.5.3.201506180105'
  sha256 '94f6850bc82c06ba075e8eac338c5fe8ad60609fe31748bab5c9b99d105019c4'

  url "http://dl3.xmind.net/xmind-macosx-#{version}.dmg"
  name 'XMind'
  homepage 'http://www.xmind.net'
  license :freemium
  tags :vendor => 'XMind'

  zap :delete => [
    '~/Library/XMind',
    '~/Library/Saved Application State/org.xmind.cathy.application.savedState'
  ]

  depends_on :macos => '>= :snow_leopard'

  app 'XMind.app'
end
