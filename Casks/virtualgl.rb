cask "virtualgl" do
  version "2.6.5"
  sha256 "7071294cbaa94057aa6cd48e3e691cfaf5f9dca1122e04218b464315095ed0c9"

  url "https://downloads.sourceforge.net/virtualgl/VirtualGL-#{version}.dmg",
      verified: "downloads.sourceforge.net/virtualgl/"
  appcast "https://sourceforge.net/projects/virtualgl/rss"
  name "VirtualGL"
  homepage "https://www.virtualgl.org/"

  pkg "VirtualGL.pkg"

  uninstall pkgutil: "com.virtualgl.vglclient",
            script:  {
              executable: "/opt/VirtualGL/bin/uninstall",
              sudo:       true,
            }
end
