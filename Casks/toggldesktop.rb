cask 'toggldesktop' do
  version '7.4.40'
  sha256 'b125f6cee7adaa8256de77a38068220172588aa1775a7b82332975b3ca49007f'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'a2129c3ff29b3cad083012605c3a9b43a9b4af9f6994acd70d634188bb837b0e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
