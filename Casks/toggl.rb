cask 'toggl' do
  version '7.5.213'
  sha256 '9618f92897a58036eab2163e0bb8fdcddff790b37d51f9a3a7ecf0849805e74c'

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/toggl-desktop/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
