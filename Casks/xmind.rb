cask 'xmind' do
  version '8-update5'
  sha256 '8510de4425eb94f7f6b3e91f77a84c9d55612213d2727807b3125b49929f06ce'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
