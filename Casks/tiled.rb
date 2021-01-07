cask "tiled" do
  version "1.4.3"
  sha256 "a7d30d6e9fcdacdd49262dceb041c2a5dd975f177ab8d68b29832714414872de"

  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip",
      verified: "github.com/bjorn/tiled/"
  name "Tiled"
  desc "Flexible level editor"
  homepage "https://www.mapeditor.org/"

  livecheck do
    url :url
    strategy :git
  end

  depends_on macos: ">= :sierra"

  app "Tiled.app"
end
