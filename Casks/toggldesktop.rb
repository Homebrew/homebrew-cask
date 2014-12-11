cask :v1 => 'toggldesktop' do
  version :latest
  sha256 :no_check

  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  homepage 'https://www.toggl.com'
  license :unknown    # todo: improve this machine-generated value

  app 'TogglDesktop.app'
end
