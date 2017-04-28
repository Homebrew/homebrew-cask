cask 'toggldesktop' do
  version '7.4.37'
  sha256 '066d22db9d009e480c0c85b9251e1fa3505e49fc9660cb1d7e5bcd62c4cc37cf'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'a2129c3ff29b3cad083012605c3a9b43a9b4af9f6994acd70d634188bb837b0e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
