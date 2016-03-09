cask 'toggldesktop' do
  version '7.3.254'
  sha256 'dcb61a642460b4a6621aefc773084d1be3be0c9bcd121c234493a92b19646d04'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: 'a57a5150fd14b78eafed87d2cc0459a63392a13497452befd6f63e006f21c64a'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
