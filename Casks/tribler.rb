cask "tribler" do
  version "7.10.0"
  sha256 "c63efa0f22635175a56b6e4745efd772fc978f21cb2814e5b4f442d29182ec47"

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
