cask 'toggldesktop' do
  version '7.4.39'
  sha256 '5e8ac46f2728028d98889c4ec822a1f5a0a9b5aa74b442f3eceeb1525b33903e'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'a2129c3ff29b3cad083012605c3a9b43a9b4af9f6994acd70d634188bb837b0e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
