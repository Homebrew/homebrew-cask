cask "xca" do
  version "2.8.0"
  sha256 "c53c6cee47572bdfc68d9090c1268e406fdb73384cc240119cf069ac8c8ddf76"

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
