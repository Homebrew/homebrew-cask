cask 'tastyworks' do
  version '0.41.0'
  sha256 '953862888ee31ed993d6e8cad8b12a817de30c94b82c0324c8cae58d1b938920'

  url "https://download.tastyworks.com/desktop/#{version}/tastyworks-#{version}.dmg"
  appcast 'https://tastyworks.com/technology.html'
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  auto_updates true

  app 'tastyworks.app'

  zap trash: [
               '~/Library/Application Support/tastyworks',
               '~/Library/Saved Application State/com.tastyworks.desktop.savedState',
             ]
end
