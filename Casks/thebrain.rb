cask 'thebrain' do
  version '11.0.17.0'
  sha256 '34f919ec95841997af9eef185b2fe405f13d26bdc7de4708bf32ebc42358fbfa'

  url "http://updater.thebrain.com/files/TheBrain#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://salesapi.thebrain.com/?a=doDirectDownload%26id=10000'
  name 'TheBrain'
  homepage 'https://www.thebrain.com/'

  app "TheBrain #{version.major}.app"
end
