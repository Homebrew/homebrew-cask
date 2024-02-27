cask "xca" do
  version "2.6.0"
  sha256 "34caf717016921c19707719db35c967c2b18fe59efca76473a9008f7d462ba9b"

  url "https://github.com/chris2511/xca/releases/download/RELEASE.#{version}/xca-#{version}-Darwin.dmg",
      verified: "github.com/chris2511/xca/"
  name "XCA"
  desc "X Certificate and Key management"
  homepage "https://hohnstaedt.de/xca/"

  livecheck do
    url :url
    regex(/^RELEASE\.(\d+(?:\.\d+)*)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "xca.app"

  zap trash: [
    "~/Library/Application Support/xca",
    "~/Library/Saved Application State/de.hohnstaedt.xca.savedState",
  ]
end
