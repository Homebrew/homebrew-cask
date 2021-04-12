cask "tribler" do
  version "7.9.0-RC1"
  sha256 "f830ded0ef052396fbeeb1a659c48bbf97b99603206b84ee66aa3423f3db76fc"

  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg",
      verified: "github.com/Tribler/tribler/"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
