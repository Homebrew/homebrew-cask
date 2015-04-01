cask :v1 => 'toggl' do
  version :no_check
  sha256 '89cbb9d701e5bc612542cdfd35ca182e93ff5c81ddc21c183b2cb867fad84937'

  url 'https://toggl.com/api/v8/installer?app=td&platform=darwin&channel=stable'
  name 'Toggl Desktop'
  homepage 'http://support.toggl.com/toggl-on-my-desktop/'
  license :closed

  app 'TogglDesktop.app'
end
