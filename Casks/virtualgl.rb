cask "virtualgl" do
  version "2.6.95"
  sha256 "43379793b4b63a37dd294841a5f442c08c666edad0bedc5d48b9f853d3e998b7"

  url "https://downloads.sourceforge.net/virtualgl/VirtualGL-#{version}.dmg",
      verified: "downloads.sourceforge.net/virtualgl/"
  name "VirtualGL"
  desc "3D without boundaries"
  homepage "https://www.virtualgl.org/"

  pkg "VirtualGL.pkg"

  uninstall pkgutil: "com.virtualgl.vglclient",
            script:  {
              executable: "/opt/VirtualGL/bin/uninstall",
              sudo:       true,
            }
end
