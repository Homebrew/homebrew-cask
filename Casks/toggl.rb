cask 'toggl' do
  version '7.5.3'
  sha256 '24cffd27ba014088de2e1910dc3c43e871956d67a5a6da62043a97c1f3b9a365'

  # github.com/toggl-open-source/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/toggl-desktop/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
