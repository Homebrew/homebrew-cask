cask 'tastyworks' do
  version '1.4.0'
  sha256 'cbcae173a4c89e829b62d1369a258bf5fbe004a43c9842aa74e945f6596d8b99'

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
