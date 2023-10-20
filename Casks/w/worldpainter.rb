cask "worldpainter" do
  version "2.21.3"
  sha256 "149f874abc6176241634b639e3d38040a611e198e1ba7d8f606ba8d640bae2e0"

  url "https://www.worldpainter.net/files/worldpainter_#{version}.tgz"
  name "WorldPainter"
  desc "Interactive map generator for Minecraft"
  homepage "https://www.worldpainter.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/files/worldpainter[._-]v?(\d+(?:\.\d+)+)\.tgz}i)
  end

  depends_on macos: ">= :el_capitan"

  app "WorldPainter.app"

  zap trash: "~/Library/Application Support/WorldPainter"
end
