cask 'valentina-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.valentina-db.net/en/all-downloads/vstudio/current/vstudio_mac_64?format=raw'
  name 'Valentina Studio'
  homepage 'https://www.valentina-db.net/en/valentina-studio-overview'

  app 'Valentina Studio.app'
end
