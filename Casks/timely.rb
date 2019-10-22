cask 'timely' do
  version '1.0.4'
  sha256 'e1226186c422de52c45e312479761480fed3c0e26323462785f4ec71caba4147'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
