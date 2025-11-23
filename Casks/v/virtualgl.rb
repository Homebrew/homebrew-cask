cask "virtualgl" do
  version "3.1.4"
  sha256 "ea12422b2e1e3378c63a1fd1b37fa11b00303b7bf885aa49a1da295523b19a30"

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
