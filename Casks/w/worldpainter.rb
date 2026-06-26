cask "worldpainter" do
  version "2.26.4"
  sha256 "fca72779ce5f82ec69ed37b471a41cc89aa999480cdc85cc18e3c0a6d474e64f"

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
