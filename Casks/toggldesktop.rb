cask 'toggldesktop' do
  version '7.3.197'
  sha256 '7cda91d92fc313640d0c06fafc8d0599f7b60c5b99a9dba38516f75ad196c8f2'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'cd00113cfce04e368dc0209d73d9bb07e46a97622eaf2611de02e2c6d8e21f31'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
