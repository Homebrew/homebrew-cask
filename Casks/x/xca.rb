cask "xca" do
  version "2.9.0"
  sha256 "90df40a56bb57bbf46158b4db1c9fddd8a2d7cc48477b5522b457ec4e12cd45a"

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
