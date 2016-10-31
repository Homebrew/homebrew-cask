cask 'toggldesktop' do
  version '7.3.337'
  sha256 '2699165bf65b3e8ee6f43cbd66d210eaa9546c74b26e898294a4f03520974819'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '0af9b4c523d6303ce4ccbeeb640733b7b1de9901d22b13acc8c2cb8c0d9376ed'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'

  app 'TogglDesktop.app'
end
