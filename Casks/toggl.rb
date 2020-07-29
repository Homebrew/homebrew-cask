cask 'toggl' do
  version '7.5.192'
  sha256 'df2a0eb19736efcd3e8ac86ab3386f827924d75122f2368a07b6c86e24dfcff7'

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
