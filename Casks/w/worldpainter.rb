cask "worldpainter" do
  version "2.22.1"
  sha256 "ff39256a2f248df09ec4a0bfffd5cd90ed5678d325de57df83f33f4a89a28467"

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
