cask "tribler" do
  version "7.8.0"
  sha256 "621103e765fb87d9b0be9f301bfa190c3d7bff9a3a152281e89ea328ca8ea69b"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  appcast "https://github.com/Tribler/tribler/releases.atom"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
