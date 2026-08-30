cask "virtualgl" do
  version "3.1.5"
  sha256 "c4a5e2daabe503b9e346b50bd3a14a78011b6a943490417a0805ce332e4ede35"

  url "https://github.com/VirtualGL/virtualgl/releases/download/#{version}/VirtualGL-#{version}.dmg"
  name "VirtualGL"
  desc "3D without boundaries"
  homepage "https://www.virtualgl.org/"

  depends_on :macos

  pkg "VirtualGL.pkg"

  uninstall script:  {
              executable: "/opt/VirtualGL/bin/uninstall",
              sudo:       true,
            },
            pkgutil: "com.virtualgl.vglclient"

  # No zap stanza required
end
