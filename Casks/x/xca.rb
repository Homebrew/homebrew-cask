cask "xca" do
  version "2.7.0"
  sha256 "14652229069a75c7c2346d1c67bc84136c12ed95caced7bff2548b0debb8d066"

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
