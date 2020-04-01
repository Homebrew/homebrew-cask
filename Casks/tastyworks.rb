cask 'tastyworks' do
  version '1.5.4'
  sha256 '8918e10a73c0bc8280c36f6caf038bef11c39112b23b11f8110e4f40d092b121'

  url "https://download.tastyworks.com/desktop-#{version.major}.x.x/#{version}/tastyworks-#{version}.dmg"
  appcast 'https://tastyworks.freshdesk.com/support/solutions/articles/43000435186-recent-release-notes',
          configuration: version.major_minor
  name 'tastyworks'
  homepage 'https://tastyworks.com/'

  auto_updates true

  app 'tastyworks.app'

  zap trash: [
               '~/Library/Application Support/tastyworks',
               '~/Library/Saved Application State/com.tastyworks.desktop.savedState',
             ]
end
