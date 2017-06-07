cask 'toggldesktop' do
  version '7.4.45'
  sha256 '2ef6cbc8c949a1c537290f38f907d81361b7f482524a67b697f166f08b2cdbdf'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'f9e12d55a83e2f976bc0179a284f6d567b0b248680932d6f3ab8f0cb29b6b3a6'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
