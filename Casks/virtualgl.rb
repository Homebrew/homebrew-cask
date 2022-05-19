cask "virtualgl" do
  version "3.0.1"
  sha256 "1a4c826356f08d1febf8138220cf0f0ba0d00e8cd0ef082db3043a0bcc03f435"

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
