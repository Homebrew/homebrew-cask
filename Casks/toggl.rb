cask 'toggl' do
  version '7.4.1023'
  sha256 'cd87582ece7538f6d1b8731a794e97b2d38df60f206ace0796b9c532a5b9e3c3'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/toggl-desktop/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
