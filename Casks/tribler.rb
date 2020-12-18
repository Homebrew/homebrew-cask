cask "tribler" do
  version "7.6.1"
  sha256 "3eefc1cdbd183275ad24834440b0da03991e714f4d3325068aad2dfcfa31b2a9"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  appcast "https://github.com/Tribler/tribler/releases.atom"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
