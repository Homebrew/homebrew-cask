cask 'tastyworks' do
  version '1.0.16'
  sha256 'd2c16129f6031da04c2402dee449ddeaa64ae3766df22fd50e7917314c8d61f7'

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
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
