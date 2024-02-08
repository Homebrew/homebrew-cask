cask "virtualgl" do
  version "3.1"
  sha256 "febcae980befdea6ea674e7fe8366cf6d36e603850565231fcfacd9560c995f1"

  url "https://downloads.sourceforge.net/virtualgl/VirtualGL-#{version}.dmg",
      verified: "downloads.sourceforge.net/virtualgl/"
  name "VirtualGL"
  desc "3D without boundaries"
  homepage "https://www.virtualgl.org/"

  pkg "VirtualGL.pkg"

  uninstall script:  {
              executable: "/opt/VirtualGL/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.vglclient"
end
