cask 'thebrain' do
  version '10.0.48.0'
  sha256 '8fc3f33fa0ee35655a5bffe3e68272b68cae81bcb2b4cc67fa813b413a058903'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
