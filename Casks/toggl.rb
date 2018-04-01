cask 'toggl' do
  version '7.4.84'
  sha256 '22ef7b89f9ce04a24621f25e4d1f025c6391ec690ec773b74a244e5f8b425466'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'f76871b13b18b13ae223a3ba5bc9463311e57d69977d895ffac0c4f223f687d8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
