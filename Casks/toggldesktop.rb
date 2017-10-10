cask 'toggldesktop' do
  version '7.4.68'
  sha256 'bc758867fb5bb6e6c1058bc562f4c4d476cda68dfc8c89f8df0f430baddd1b2a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '4b7a1222c778d10db0cf1aedd6d27249fc7df625663228fc28207a2510b50dd8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
