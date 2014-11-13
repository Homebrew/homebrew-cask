cask :v1 => 'valentina-studio' do
  version :latest
  sha256 :no_check

  url 'http://www.valentina-db.com/download/release/mac_32/vstudio_5_mac.dmg'
  homepage 'http://www.valentina-db.com/'
  license :unknown

  app 'Valentina Studio.app'
end
