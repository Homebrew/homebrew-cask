cask 'toggl' do
  version '7.4.144'
  sha256 '7bac63b5d2ef6e3fc96d3b712995637bc00b0bc2c0bbaaf68906aae6a6b1a999'

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
