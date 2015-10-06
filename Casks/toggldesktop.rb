cask :v1 => 'toggldesktop' do
  version :latest
  sha256 :no_check

  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  name 'TogglDesktop'
  appcast 'https://assets.toggl.com/installers/darwin_stable_appcast.xml',
          :sha256 => '0ad67b3dd633b2b79c54fa2a726370b97dbad715a1794141fc8862e0b326ed48'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
