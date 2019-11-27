cask 'timely' do
  version '1.0.7'
  sha256 '205b90d8d4f52fde074c7152facb8ca79f45414f246291b896908974a71c3673'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
