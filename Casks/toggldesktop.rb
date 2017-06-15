cask 'toggldesktop' do
  version '7.4.47'
  sha256 '1dd41946486763c767aa25ecf425e3cbf529c7bd95060a88776655581df627f7'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '981b83d74b75daa47e4f07aedd1bf08fadef51542bec3a512b8ad31761ec3db0'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
