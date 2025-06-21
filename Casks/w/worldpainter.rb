cask "worldpainter" do
  version "2.24.2"
  sha256 "73ade2776e403fe62c5407effbbaadd1caa7fd8c46c1c0444a8d73bc390e7b34"

  url "https://www.worldpainter.net/files/worldpainter_#{version}.tgz"
  name "WorldPainter"
  desc "Interactive map generator for Minecraft"
  homepage "https://www.worldpainter.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/files/worldpainter[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :el_capitan"

  app "WorldPainter.app"

  zap trash: "~/Library/Application Support/WorldPainter"
end
