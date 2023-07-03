cask "worldpainter" do
  version "2.18.4"
  sha256 "586178f1f841ceed81f2f1c8297194c208870eb7fea181c2669a68ec2a8a6712"

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
