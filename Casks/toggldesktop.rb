cask 'toggldesktop' do
  version '7.4.58'
  sha256 '44f238e7054fe02a002dd04093a34baee9420bc2c32320081f8509c5ca6af7d4'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '4b7a1222c778d10db0cf1aedd6d27249fc7df625663228fc28207a2510b50dd8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
