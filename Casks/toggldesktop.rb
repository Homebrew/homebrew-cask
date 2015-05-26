cask :v1 => 'toggldesktop' do
  version :latest
  sha256 :no_check

  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com'
  license :bsd

  app 'TogglDesktop.app'
end
