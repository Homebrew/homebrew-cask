cask 'timely' do
  version '1.0.2'
  sha256 'e572fc334da36f41f053676daf45793b693e893faf04d8edb8c557593c033daf'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
