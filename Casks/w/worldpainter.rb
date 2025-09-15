cask "worldpainter" do
  version "2.26.0"
  sha256 "bbf2622a49d6fb90f85896f3a737646aba53ffca2baf20c569daf7376badc428"

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
