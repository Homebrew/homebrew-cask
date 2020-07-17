cask 'timely' do
  version '1.1.2'
  sha256 '33e9de20cbcdfe054fb4ee4fd8791787f8602593c829113773b37d8013fe8106'

  # github.com/Timely/ was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
