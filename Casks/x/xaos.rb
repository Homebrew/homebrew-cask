cask "xaos" do
  version "4.3.7"
  sha256 "b265b728ddeb476661d09c70a3f6cdc7b25b2f9d2622c8d29f88748c2162e98a"

  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS.dmg"
  name "GNU XaoS"
  desc "Real-time interactive fractal zoomer"
  homepage "https://xaos-project.github.io/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "XaoS.app"

  zap trash: "~/Library/Preferences/net.sourceforge.xaos.XaoS.plist"

  caveats do
    requires_rosetta
  end
end
