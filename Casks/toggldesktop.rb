cask 'toggldesktop' do
  version '7.4.7'
  sha256 '6eeffced8ebd37e6f880197a03a70333eeac8c7d8614451591f9591112856796'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '7328b779925803af3801f3528c3f191ee57412a3e72dbb9b73e2a6aa7a703b12'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
