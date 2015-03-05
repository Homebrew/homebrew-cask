cask :v1 => 'valentina-studio' do
  version :latest
  sha256 :no_check

  url 'http://www.valentina-db.com/download/release/mac_32/vstudio_5_mac.dmg'
  homepage 'http://www.valentina-db.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Valentina Studio.app'
end
