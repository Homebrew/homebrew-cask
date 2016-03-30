cask 'toggldesktop' do
  version '7.3.309'
  sha256 '6decf6ad54dc9f51e8e334856f5f7c840a67f33f48be639e476efa413f71b4fe'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'da5519e40848ac62f8f0027db9f6001c53f0687bf150cbd168b5196fb06495d4'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
