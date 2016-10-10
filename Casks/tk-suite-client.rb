cask 'tk-suite-client' do
  version '4.4.34'
  sha256 '60f0011b66f958a80295bf37011b166976967a1bde149ee278fa94b61172fb83'

  url "ftp://ftp.agfeo.de/pub/software/TK-Suite-Client_intel32_agfeo_#{version}.dmg"
  name 'TK-Suite Client'
  homepage 'https://agfeo.de/agfeo_web/hp3.nsf/lu/2064'

  app 'TK-Suite-Client.app'
end
