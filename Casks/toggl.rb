cask 'toggl' do
  version '7.5.146'
  sha256 '6cdbb30e93bde7ba11c81406427abca185f9a1289bf3aa6e44f14f4cbef0fab8'

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
