cask :v1 => 'xmind' do
  version '3.6.0.R-201511090408'
  sha256 'c7b452da9ccdbf2da7745147db9954365f8fe41b294c8673140c5a79a6a4a92f'

  url "http://www.xmind.net/xmind/downloads/xmind7-macosx-#{version}.dmg"
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
