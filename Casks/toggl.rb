cask 'toggl' do
  version '7.4.140'
  sha256 '7ba2c6b6fb6f604b7c06b62629ffc668d5ea6bf5d44754649bca5758dfd80bda'

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
