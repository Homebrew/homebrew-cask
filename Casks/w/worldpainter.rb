cask "worldpainter" do
  version "2.26.2"
  sha256 "e3d31ca01723890e3b7ddefc1025f0236351a4127ef28cd86b7bc1b4360e8774"

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
