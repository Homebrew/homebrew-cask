cask 'wrike' do
  version '3.3.3'
  sha256 '80fb64ddcba283c397ce332954f90e822ad014fd10db1d020a0b6d79d1f2e46e'

  url "https://dl.wrike.com/download/WrikeDesktopApp.v#{version}.dmg"
  appcast 'https://www.wrike.com/frontend/electron-app/changelog.json'
  name 'Wrike'
  homepage 'https://www.wrike.com/apps/mobile-and-desktop/desktop-app/'

  app 'Wrike for Mac.app'
end
