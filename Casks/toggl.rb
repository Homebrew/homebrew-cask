cask 'toggl' do
  version '7.4.68'
  sha256 '02ca17e1d4655a9076173eab8b04b64d768c8cc9ed5fa9e771ee1eea044b3f92'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '4b7a1222c778d10db0cf1aedd6d27249fc7df625663228fc28207a2510b50dd8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
