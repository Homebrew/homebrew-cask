cask 'thebrain' do
  version '10.0.63.0'
  sha256 'e64f0abc01c6b285a8bc291762114287df86ce6d1b35e981874e99b0e31b9761'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
