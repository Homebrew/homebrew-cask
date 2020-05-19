cask 'toggl' do
  version '7.5.123'
  sha256 'cb6a0c92d32b545fa17a9faa1294b774dc193b624961910dfe3d92ae714f5f6e'

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
