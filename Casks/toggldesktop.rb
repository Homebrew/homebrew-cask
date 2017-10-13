cask 'toggldesktop' do
  version '7.4.58'
  sha256 'd911ec53fdc4c0ffc678d024eb47cd3a1564c0882afd1884e4be4a434f5a52fe'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '4b7a1222c778d10db0cf1aedd6d27249fc7df625663228fc28207a2510b50dd8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
