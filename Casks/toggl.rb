cask 'toggl' do
  version '7.4.155'
  sha256 'db8fe1b569aa294857d75d98e2bf78451230ba8d491ed403be9409427d4a1fda'

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
