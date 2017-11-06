cask 'toggl' do
  version '7.4.71'
  sha256 'bfab01fe4f09017828d0c69bd3e4f11efc96abb417e1a1a766b92a218452f44a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'ff775387a8c7946cc1ea804d1373d44e7cdabb00a674a70ef32e563d370e7fb2'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
