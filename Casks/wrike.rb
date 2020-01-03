cask 'wrike' do
  version '3.1.0'
  sha256 '54c970b1d7a231de9d60418e21955e064037e132bd581f5f87726147bba3e0e7'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
