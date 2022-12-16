cask "virtualgl" do
  version "3.0.90"
  sha256 "80b2eb8787369dbb42fff50de9afbd9deeb1a5a534beee7d64757b43cb4b0df5"

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
