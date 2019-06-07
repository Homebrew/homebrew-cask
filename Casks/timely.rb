cask 'timely' do
  version '1.0.1'
  sha256 'e6bd970c8ba5c4a649aff87b2c6338996882babd8bd172b97f835060f1cfb502'

  # github.com/Timely was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-v#{version}/Timely-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://app.timelyapp.com/download/mac'
  name 'Timely'
  homepage 'https://timelyapp.com/'

  app 'Timely.app'
end
