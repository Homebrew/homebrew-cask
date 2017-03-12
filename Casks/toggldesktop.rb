cask 'toggldesktop' do
  version '7.4.18'
  sha256 'e0e6a2a44e91fb34fba9d7cb1e3a41a288ec55da9415efae18a83b396ab88287'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'c44ea9c0ffb7b43fad2d33c84e6716fd37cc16174a359e51c443bc0a847ecf74'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  app 'TogglDesktop.app'
end
