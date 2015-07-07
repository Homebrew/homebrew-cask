cask :v1 => 'toggldesktop' do
  version :latest
  sha256 :no_check

  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  name 'TogglDesktop'
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          :sha256 => '9ab19ddd0df173611eeb42344254e108b36583f517e91561cbeff997897d85df'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
