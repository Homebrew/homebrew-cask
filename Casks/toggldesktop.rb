cask 'toggldesktop' do
  version '7.4.31'
  sha256 '7e543bcc3aa9cb4fa40dfb62162b82d661e6b3419d56cfdf1418312aea98c4ce'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'a2129c3ff29b3cad083012605c3a9b43a9b4af9f6994acd70d634188bb837b0e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
