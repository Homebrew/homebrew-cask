cask "virtualgl" do
  version "2.6.3"
  sha256 "fbbc32adca830dc68eeff099843d230388c1f0fe51ea2f243855b9e17221e324"

  # downloads.sourceforge.net/virtualgl/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/virtualgl/VirtualGL-#{version}.dmg"
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
