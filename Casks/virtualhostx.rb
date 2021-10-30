cask "virtualhostx" do
  version "2021.01.10,1017"
  sha256 "3d86e05f0e4072d1180d06b9126e12c7943ffc6bdce9b754e6a1d417eb18fc0a"

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.after_comma}.zip"
  name "VirtualHostX"
  homepage "https://clickontyler.com/virtualhostx/"

  livecheck do
    url "https://shine.clickontyler.com/appcast.php?id=45"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "VirtualHostX.app"
end
