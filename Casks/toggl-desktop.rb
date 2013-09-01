class TogglDesktop < Cask
  url 'https://www.toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  homepage 'https://www.toggl.com'
  version 'latest'
  no_checksum
  link 'TogglDesktop.app'
end
