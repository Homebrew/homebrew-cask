cask 'toggldesktop' do
  version '7.4.68'
  sha256 '092f4ad3bb8939741ea7b6627c0e3292662fdbbce3059a845ff04b5ea0d4731a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '4b7a1222c778d10db0cf1aedd6d27249fc7df625663228fc28207a2510b50dd8'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
