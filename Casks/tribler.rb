cask "tribler" do
  version "7.6.0"
  sha256 "82d8f5d923250cfd1854cab78b6394bc003e566de03222ca2bff80df62ea3476"

  # github.com/Tribler/tribler/ was verified as official when first introduced to the cask
  url "https://github.com/Tribler/tribler/releases/download/v#{version}/Tribler-#{version}.dmg"
  appcast "https://github.com/Tribler/tribler/releases.atom"
  name "Tribler"
  desc "Privacy enhanced BitTorrent client with P2P content discovery"
  homepage "https://www.tribler.org/"

  app "Tribler.app"
end
