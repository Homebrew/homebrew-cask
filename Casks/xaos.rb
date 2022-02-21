cask "xaos" do
  version "4.2.1"
  sha256 "be88d2b1c26b3ef1ec8a297195364acfc549a60facf91d49e01941415f662a72"

  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg",
      verified: "github.com/xaos-project/XaoS/"
  name "GNU XaoS"
  desc "Real-time interactive fractal zoomer"
  homepage "https://xaos-project.github.io/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  app "XaoS.app"
end
