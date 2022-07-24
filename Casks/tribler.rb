cask "tribler" do
  version "7.12.0"
  sha256 "0c4403cc990ae21d264b94915d4c1e161e129b059d39c4427bdecbed7e05fd50"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tribler.app"
end
