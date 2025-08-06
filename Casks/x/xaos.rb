cask "xaos" do
  version "4.3.4"
  sha256 "016e34f6b8dc42498acaa90bf92ce3dce5fc9ae2963e01c8ce459f57f6b1bb94"

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
