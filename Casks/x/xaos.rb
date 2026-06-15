cask "xaos" do
  version "4.3.5"
  sha256 "ef54cf7f01bf8f05cffcf20e782159c4c1545fbc2be5937222dbc5d324a66408"

  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg",
      verified: "github.com/xaos-project/XaoS/"
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
