cask 'xmind' do
  version '3.7.8.201807240049,8-update8'
  sha256 '95cc8d8950e8b10fa60a831cc5b3e33da17932336320f0f803cfae94cc1f814e'

  url "https://www.xmind.net/xmind/downloads/xmind-#{version.after_comma}-macosx.dmg"
  appcast 'https://www.xmind.net/download/xmind8/'
  name 'XMind'
  homepage 'https://www.xmind.net/'

  app 'XMind.app'

  zap trash: [
               '~/Library/XMind',
               '~/Library/Saved Application State/org.xmind.cathy.application.savedState',
             ]
end
