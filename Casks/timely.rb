cask 'timely' do
  version '1.0.10'
  sha256 '121e5b3075c9de953c2fa0b585ec45824a8dc08668992c444143ca6af5d73152'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
