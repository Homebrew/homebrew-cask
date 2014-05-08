class Toggldesktop < Cask
  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  homepage 'https://www.toggl.com'
  version 'latest'
  sha256 :no_check
  link 'TogglDesktop.app'
end
