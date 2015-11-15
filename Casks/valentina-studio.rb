cask :v1 => 'valentina-studio' do
  version :latest
  sha256 :no_check

  url 'https://www.valentina-db.com/en/all-downloads/vstudio/current/vstudio_mac_64?format=raw'
  name 'Valentina Studio'
  homepage 'https://www.valentina-db.com/en/valentina-studio-overview'
  license :freemium

  app 'Valentina Studio.app'
end
