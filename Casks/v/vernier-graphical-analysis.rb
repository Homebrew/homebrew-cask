cask "vernier-graphical-analysis" do
  version "6.3.0-4399"
  sha256 "79e3836d931f1258579178f5dd82ce281da2aadd9afa7978ef0b8d410b212648"

  url "https://software-releases.graphicalanalysis.com/ga/mac/release/Vernier-Graphical-Analysis-#{version}.zip"
  name "Vernier Graphical Analysis"
  desc "Instrument data analysis tool"
  homepage "https://www.vernier.com/product/graphical-analysis/"

  livecheck do
    url "https://software-releases.graphicalanalysis.com/ga/mac/release/release-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Vernier Graphical Analysis.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/vernier.graphicalanalysis.sfl*",
    "~/Library/Application Support/Vernier Graphical Analysis",
    "~/Library/Logs/Vernier Graphical Analysis",
    "~/Library/Preferences/Vernier.GraphicalAnalysis.plist",
    "~/Library/Saved Application State/Vernier.GraphicalAnalysis.savedState",
  ]
end
