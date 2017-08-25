cask 'xmind' do
  version '8-update3'
  sha256 '3312d8bdd00b12662114d20144ee5aaf2daa990c2d39b2cd082ed87557606825'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
