cask :v1 => 'tuntap' do
  version '20141104'
  sha256 '149dbfdfea3264249536cd39240e613f685c4c524635cf116dbcc09ec252b920'

  url "https://downloads.sourceforge.net/project/tuntaposx/tuntap/#{version}/tuntap_#{version}.tar.gz"
  homepage 'http://tuntaposx.sourceforge.net/'
  license :oss

  pkg "tuntap_#{version}.pkg"

  uninstall :pkgutil => 'tuntap.startup_item.tap|tuntap.startup_item.tun|tuntap.tap|tuntap.tun',
            :launchctl => [
                           'net.sf.tuntaposx.tun.plist',
                           'net.sf.tuntaposx.tap.plist',
                          ],
            :kext => [
                      'net.sf.tuntaposx.tap',
                      'net.sf.tuntaposx.tun'
                     ],
            :delete => [
                        '/Library/LaunchDaemons/net.sf.tuntaposx.tap.plist',
                        '/Library/LaunchDaemons/net.sf.tuntaposx.tun.plist'
                       ]
end
