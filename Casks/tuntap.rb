cask "tuntap" do
  version "20150118"
  sha256 "2f31ffece5ad349aaae0516c08e2f6bd569d61ba2ec54b27909ba71537e7b4ff"

  url "https://downloads.sourceforge.net/tuntaposx/tuntap/#{version}/tuntap_#{version}.tar.gz",
      verified: "downloads.sourceforge.net/tuntaposx/"
  appcast "https://sourceforge.net/projects/tuntaposx/rss?path=/tuntap"
  name "TunTap"
  desc "Kernel extensions that create virtual network interfaces"
  homepage "https://tuntaposx.sourceforge.io/"

  pkg "tuntap_#{version}.pkg"

  uninstall pkgutil:   "tuntap.startup_item.tap|tuntap.startup_item.tun|tuntap.tap|tuntap.tun",
            launchctl: [
              "net.sf.tuntaposx.tun.plist",
              "net.sf.tuntaposx.tap.plist",
            ],
            kext:      [
              "net.sf.tuntaposx.tap",
              "net.sf.tuntaposx.tun",
            ],
            delete:    [
              "/Library/LaunchDaemons/net.sf.tuntaposx.tap.plist",
              "/Library/LaunchDaemons/net.sf.tuntaposx.tun.plist",
            ]

  caveats do
    discontinued
  end
end
