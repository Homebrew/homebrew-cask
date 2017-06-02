cask 'xmind' do
  version '8-update2'
  sha256 '4c2d3a367c84754ff969a1a9e28725af85e79121648555ed99fd60a94d9ea5ab'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
