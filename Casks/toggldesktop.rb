cask 'toggldesktop' do
  version '7.4.53'
  sha256 'be99aec956a5c0c462abb0aeac86433c0d6f7b9fd6cf52de3b30d58453c04c40'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '9454d90a2bdf976c0ad4cf88495e6324e1c36c4a4c564335d2d4df2580b0c8a1'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
