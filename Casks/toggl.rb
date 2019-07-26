cask 'toggl' do
  version '7.4.479'
  sha256 '4ed9a4fa41429eff53c1c136a6b12dc5fddfeb8a74e4a70ffeabe5c4e71c0f6e'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
