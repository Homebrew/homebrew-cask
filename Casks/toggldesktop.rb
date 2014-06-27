class Toggldesktop < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  homepage 'https://www.toggl.com'

  link 'TogglDesktop.app'
end
