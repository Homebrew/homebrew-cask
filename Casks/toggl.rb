cask 'toggl' do
  version '7.5.172'
  sha256 '4c0f19046ef3a2a08439623e0ffe27693b7dc3365395a1fb0c3403f0f00c3f21'

  # github.com/toggl-open-source/toggldesktop/ was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://toggl-open-source.github.io/toggldesktop/assets/releases/darwin_stable_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/toggl-desktop/'

  conflicts_with cask: [
                         'toggl-beta',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
