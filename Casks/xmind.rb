cask 'xmind' do
  version '8-update6'
  sha256 'd32ef17efa6c74a3ecf8d0711d9d2e5a3b0895ef9fbecab3ad3568089dde8a97'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap trash: [
               '~/Library/XMind',
               '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
             ]
end
