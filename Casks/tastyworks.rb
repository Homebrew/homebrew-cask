cask 'tastyworks' do
  version '1.4.1'
  sha256 '59941df764e26feeee97ebc71ba82d58e7ed6a52c882779a5c8177af10ee1a85'

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
