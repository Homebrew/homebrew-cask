cask :v1 => 'tk-suite-client' do
  version '4.4.25'
  sha256 '2d6679ccb7225e212288f46a6c0239ab3305de829895e297590e78864b1150ce'

  url "ftp://ftp.agfeo.de/pub/software/TK-Suite-Client_intel32_agfeo_#{version}.dmg"
  homepage 'http://agfeo.de/agfeo_web/hp3.nsf/lu/2064'
  license :unknown    # todo: improve this machine-generated value

  app 'TK-Suite-Client.app'
end
