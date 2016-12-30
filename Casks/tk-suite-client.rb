cask 'tk-suite-client' do
  version '4.4.38'
  sha256 'e5be01717e876988aaac7f236f39de7746e4b1b2c08fd6ab4587f271f66ebb51'

  url "ftp://ftp.agfeo.de/pub/software/TK-Suite-Client_intel32_agfeo_#{version}.dmg"
  name 'TK-Suite Client'
  homepage 'https://agfeo.de/agfeo_web/hp3.nsf/lu/2064'

  app 'TK-Suite-Client.app'
end
