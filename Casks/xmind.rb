cask 'xmind' do
  version '8'
  sha256 'c4dc8e3eb47d19557fbe5ac837122768eded1321042b064fc3e25f7a2a66ce86'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net'

  depends_on macos: '>= :snow_leopard'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
