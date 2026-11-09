cask "vernier-instrumental-analysis" do
  version "2.0.0-1994"
  sha256 "8b0b7096d99a1b09e72b5ef768767651c03989016985a28d7668d1a54181005b"

  url "https://software-releases.graphicalanalysis.com/ia/mac/release/Vernier-Instrumental-Analysis-#{version}.zip"
  name "Vernier Instrumental Analysis"
  desc "Instrument data acquisition tool"
  homepage "https://www.vernier.com/product/instrumental-analysis/"

  livecheck do
    url "https://software-releases.graphicalanalysis.com/ia/mac/release/release-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Vernier Instrumental Analysis.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/vernier.instrumentalanalysis.sfl*",
    "~/Library/Application Support/Vernier Instrumental Analysis",
    "~/Library/Logs/Vernier Instrumental Analysis",
    "~/Library/Preferences/Vernier.InstrumentalAnalysis.plist",
    "~/Library/Saved Application State/Vernier.InstrumentalAnalysis.savedState",
  ]
end
