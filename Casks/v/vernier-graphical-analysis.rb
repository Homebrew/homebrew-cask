cask "vernier-graphical-analysis" do
  version "6.3.1-4464"
  sha256 "4743422c61d7930250dd07368407eaa72f7d8c42f02a22603200fb0f6dbde497"

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
