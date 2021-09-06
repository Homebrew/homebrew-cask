cask "virtualgl" do
  version "2.6.90"
  sha256 "86f6da29c0129420209d07f0af23d72da20220fb59ea0057966963e395ced8b9"

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
