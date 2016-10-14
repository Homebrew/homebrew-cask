cask 'tuntap' do
  version '20150118'
  sha256 '2f31ffece5ad349aaae0516c08e2f6bd569d61ba2ec54b27909ba71537e7b4ff'

  url "https://downloads.sourceforge.net/tuntaposx/tuntap/#{version}/tuntap_#{version}.tar.gz"
  appcast 'https://sourceforge.net/projects/tuntaposx/rss?path=/tuntap',
          checkpoint: '781b6f4837d37ac562e7d41f479e694a89e5e8f242f35c8ce6f59113970b7f01'
  name 'TunTap'
  homepage 'http://tuntaposx.sourceforge.net/'

  pkg "tuntap_#{version}.pkg"

  uninstall pkgutil:   'tuntap.startup_item.tap|tuntap.startup_item.tun|tuntap.tap|tuntap.tun',
            launchctl: [
                         'net.sf.tuntaposx.tun.plist',
                         'net.sf.tuntaposx.tap.plist',
                       ],
            kext:      [
                         'net.sf.tuntaposx.tap',
                         'net.sf.tuntaposx.tun',
                       ],
            delete:    [
                         '/Library/LaunchDaemons/net.sf.tuntaposx.tap.plist',
                         '/Library/LaunchDaemons/net.sf.tuntaposx.tun.plist',
                       ]
end
