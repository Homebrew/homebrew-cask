cask 'tastyworks' do
  version '1.8.0'
  sha256 'f9fec6b0f8fbfb8438ab7536874758823e863182a28287792612a14bcb3daf8b'

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
