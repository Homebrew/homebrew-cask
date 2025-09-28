cask "worldpainter" do
  version "2.26.1"
  sha256 "889443673a92c124c3b1e67e67b1c9d8f29ea34f1d70337eddd69485c36fee37"

  url "https://www.worldpainter.net/files/worldpainter_#{version}.tgz"
  name "WorldPainter"
  desc "Interactive map generator for Minecraft"
  homepage "https://www.worldpainter.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/files/worldpainter[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "WorldPainter.app"

  zap trash: "~/Library/Application Support/WorldPainter"
end
