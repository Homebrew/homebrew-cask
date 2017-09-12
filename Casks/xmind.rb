cask 'xmind' do
  version '8-update4'
  sha256 '817221ea6870bce623e3e09d9c4492a11b59c5970808d11fe275253ab2fccc85'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap delete: [
                '~/Library/XMind',
                '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
              ]
end
