cask 'toggldesktop' do
  version '7.3.319'
  sha256 'ed5ce0d8db3819cb516a7900b18c93fc07ef826aa197fccb753ab376a1dc1079'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '88464c3266e1339f31945eb311d060bb83529049d22350daa43afba53d13cd79'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
