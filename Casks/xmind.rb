cask 'xmind' do
  version '3.6.1'
  sha256 '028b64584ad213484032fff8741a477de69cdafe4fa6ac060acb4c301bdedf59'

  url 'http://dl2.xmind.net/xmind-downloads/xmind-7-update1-macosx.dmg'
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
