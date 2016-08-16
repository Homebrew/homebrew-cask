cask 'xmind' do
  version '3.6.51'
  sha256 '9a7d31d61427dcbef5d224c8dc545335bf8ceee6346d224014b535fe1ad9fdf9'

  url 'http://www.xmind.net/xmind/downloads/xmind-7.5-update1-macosx.dmg'
  name 'XMind'
  homepage 'https://www.xmind.net'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
