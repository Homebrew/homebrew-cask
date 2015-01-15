cask :v1 => 'tcpblock' do
  version '4.2'
  sha256 '06e2d57c36c30581a856c98b288833d3f31c9626561dac9e0cbf76a760f38725'

  # macupdate.com is the official download host 
  url "https://www.macupdate.com/download/35914/TCPBlock_v#{version}.dmg"
  name 'TCPBlock'
  homepage 'http://www.macupdate.com/app/mac/35914/tcpblock'
  license :closed

  pkg 'TCPBlock_v4.2.pkg'

  uninstall :pkgutil => 'com.delantis.tcpblock.*',
            :kext => 'com.delantis.kext.tcpblocknke'
end
