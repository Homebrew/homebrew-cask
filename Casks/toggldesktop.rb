cask 'toggldesktop' do
  version '7.3.326'
  sha256 'b508d813961395286f8b56522d549f7c585ed265b1114be4cdcab120ebce1a00'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          checkpoint: '460f65668197a03b0b95a17d1a1f7d2c617321281eca6c7b6dd136de9511189d'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
