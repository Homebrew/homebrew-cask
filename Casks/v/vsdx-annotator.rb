cask "vsdx-annotator" do
  version "1.16.1,563"
  sha256 "87c9b3428831a535a0f1ef5cdf05bed85172fea2daccc01b43d668ee121ecb87"

  url "https://download.nektony.com/promo/vsdx-annotator/update/update_v#{version.csv.first}b#{version.csv.second}.zip"
  name "Nektony VSDX Annotator"
  desc "Preview, edit and convert Visio drawings"
  homepage "https://nektony.com/products/vsdx-annotator-mac"

  livecheck do
    url "https://download.nektony.com/promo/vsdx-annotator/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VSDX Annotator.app"

  zap trash: [
    "~/Library/Application Support/VSDX Annotator",
    "~/Library/Caches/com.nektony.vsdx-annotators",
    "~/Library/Cookies/com.nektony.vsdx-annotators.binarycookies",
    "~/Library/Preferences/com.nektony.vsdx-annotators.plist",
  ]
end
