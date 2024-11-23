cask "xaos" do
  version "4.3.3"
  sha256 "9dd58f609157841f29b7e8bc73321a87c6b6f940b65264e57a3196305e046c0d"

  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg",
      verified: "github.com/xaos-project/XaoS/"
  name "GNU XaoS"
  desc "Real-time interactive fractal zoomer"
  homepage "https://xaos-project.github.io/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "XaoS.app"

  zap trash: "~/Library/Preferences/net.sourceforge.xaos.XaoS.plist"

  caveats do
    requires_rosetta
  end
end
