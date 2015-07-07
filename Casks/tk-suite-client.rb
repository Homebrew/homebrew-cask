cask :v1 => 'tk-suite-client' do
  version '4.4.30'
  sha256 '3a8ed2a04962d5fe98af24c40aba0a684dc56513440e73b1c4d19b379f7be3b0'

  url "ftp://ftp.agfeo.de/pub/software/TK-Suite-Client_intel32_agfeo_#{version}.dmg"
  name 'TK-Suite Client'
  homepage 'http://agfeo.de/agfeo_web/hp3.nsf/lu/2064'
  license :closed

  app 'TK-Suite-Client.app'
end
