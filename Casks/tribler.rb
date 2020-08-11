cask "tribler" do
  version "7.5.2"
  sha256 "d950aff7f14a21595fede64d56393bda1aa896da12d12a63c940e3597e1ef7ea"

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast "https://github.com/Tribler/tribler/releases.atom"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
