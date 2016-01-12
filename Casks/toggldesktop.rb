cask 'toggldesktop' do
  version '7.3.197'
  sha256 '7cda91d92fc313640d0c06fafc8d0599f7b60c5b99a9dba38516f75ad196c8f2'

  # github.com is the official download host per the appcast feed
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          :sha256 => '16f316c6bb6565170ee35aa2c146b8be5b3a7062e7f70d2fd2e97eac6311ad64'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
