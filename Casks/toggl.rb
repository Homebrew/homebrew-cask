cask 'toggl' do
  version '7.4.129'
  sha256 '1eb1f0dc3baed9e293040f9e77946c055376339802f967beb1266f8e8bfe22c2'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '0aa1336cd987d2db2b4e88008de0b7824ef665d3975962049d37212757035d77'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
