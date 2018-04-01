cask 'xmind' do
  version '8-update7'
  sha256 '0ae1b9d4f4c7c8206ddc8864e8fff019ac58bc944a857197ffd74e917c5272a4'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version}-macosx.dmg"
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap trash: [
               '~/Library/XMind',
               '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
             ]
end
