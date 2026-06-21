cask "worldpainter" do
  version "2.26.3"
  sha256 "32ff4c294b8a61850de3f02b362e89df250261f5c94c66f1ba410092cfab2d30"

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
