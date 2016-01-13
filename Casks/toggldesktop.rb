cask 'toggldesktop' do
  version '7.3.197'
  sha256 '7cda91d92fc313640d0c06fafc8d0599f7b60c5b99a9dba38516f75ad196c8f2'

  # github.com is the official download host per the appcast feed
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          :sha256 => '6641c717bb95709107b3a9dadf73db7c5aee2fda32bb7ba83ce3ee10bec61531'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
