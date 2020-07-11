cask 'tastyworks' do
  version '1.7.1'
  sha256 '38e21da4fe11bc44d604fb2c385d055b3ea46175312a84a61127446f459bdb04'

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  appcast 'https://tastyworks.freshdesk.com/support/solutions/articles/43000435186-recent-release-notes',
          must_contain: version.major_minor
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  auto_updates true

  app 'tastyworks.app'

  zap trash: [
               '~/Library/Application Support/tastyworks',
               '~/Library/Saved Application State/com.tastyworks.desktop.savedState',
             ]
end
