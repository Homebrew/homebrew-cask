cask "virtualgl" do
  version "3.1.3"
  sha256 "458590566803806e39b9044e4f74cbde7efc0aa712d0598c9a258496914ecec2"

  url "https://github.com/VirtualGL/virtualgl/releases/download/#{version}/VirtualGL-#{version}.dmg",
      verified: "github.com/VirtualGL/virtualgl/"
  name "VirtualGL"
  desc "3D without boundaries"
  homepage "https://www.virtualgl.org/"

  pkg "VirtualGL.pkg"

  uninstall script:  {
              executable: "/opt/VirtualGL/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.vglclient"

  # No zap stanza required
end
