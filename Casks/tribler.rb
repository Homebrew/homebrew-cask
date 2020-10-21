cask "tribler" do
  version "7.5.3"
  sha256 "f6e19c9f5288ae82132f6dcf35edb7ff101b7c7f29d358e06cdff83b09a796a7"

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast "https://github.com/Tribler/tribler/releases.atom"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
