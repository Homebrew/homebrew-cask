class Tcpblock < Cask
  version '4.2'
  sha256 '06e2d57c36c30581a856c98b288833d3f31c9626561dac9e0cbf76a760f38725'

  url 'http://www.delantis.com/dist/TCPBlock_v4.2.dmg'
  homepage 'http://tcpblock.wordpress.com/'

  pkg 'TCPBlock_v4.2.pkg'
  uninstall :pkgutil => 'com.delantis.tcpblock.*'
end
