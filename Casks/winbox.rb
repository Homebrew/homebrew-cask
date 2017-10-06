cask 'winbox' do
  version '3.11'

  if MacOS.version <= :sierra
    sha256 'a2fc14d3eec133df7638f1e0697bacc7a80a5dbf90ea80be935512f9ed673d6d'
    url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  else
    sha256 '2d0f9b2a5d8bc6c8dc7e1a9a43f97a397aa2eaeed2aca2f1413871746d91a10f'
    url "http://joshaven.com/Winbox4Mac_#{version}_FixHS.dmg"
  end

  appcast 'http://joshaven.com/resources/tools/winbox-for-mac/',
          checkpoint: '8aed3dc5ccb0b19efd25cfb1e414fa4b382e952965ac8b1e3028a858a56dedd0'
  name 'Winbox4Mac'
  homepage 'http://joshaven.com/resources/tools/winbox-for-mac/'

  app 'Winbox4Mac.app'

  zap trash: '~/Library/Preferences/WinBox*Wine.wineskin.prefs.plist'
end
