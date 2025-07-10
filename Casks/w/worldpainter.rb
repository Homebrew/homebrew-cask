cask "worldpainter" do
  version "2.25.1"
  sha256 "33715ff1296cdbf0e54b7735ebc79d0ce4cb1239dfbbdc0ce2d82d126389cbd2"

  url "https://www.worldpainter.net/files/worldpainter_#{version}.tgz"
  name "WorldPainter"
  desc "Interactive map generator for Minecraft"
  homepage "https://www.worldpainter.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/files/worldpainter[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  depends_on macos: ">= :el_capitan"

  app "WorldPainter.app"

  zap trash: "~/Library/Application Support/WorldPainter"
end
