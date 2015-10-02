cask :v1 => 'valentina-studio' do
  version :latest
  sha256 :no_check

  url 'http://www.valentina-db.com/download/release/mac_64/vstudio_x64_6_mac.dmg'
  name 'Valentina Studio'
  homepage 'http://www.valentina-db.com/en/valentina-studio-overview'
  license :freemium

  app 'Valentina Studio.app'
end
