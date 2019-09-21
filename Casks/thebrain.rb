cask 'thebrain' do
  version '10.0.58.0'
  sha256 '89e1b53c25df1e9f816b7c8fac3ac43eb0abf40e6b05c625331581f541cc3780'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
