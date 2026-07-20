cask "worldpainter" do
  version "2.27.0"
  sha256 "e9c9566f83ebb0604088988b152d2c3d87abef7150524dce17859116795d8432"

  url "https://www.worldpainter.net/files/worldpainter_#{version}.tgz"
  name "WorldPainter"
  desc "Interactive map generator for Minecraft"
  homepage "https://www.worldpainter.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/files/worldpainter[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "WorldPainter.app"

  zap trash: "~/Library/Application Support/WorldPainter"
end
