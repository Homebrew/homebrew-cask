cask "vernier-spectral-analysis" do
  version "5.0.0-2559"
  sha256 "c8359180d931fe36a993448768a4fbce6133d39d11ef9252f1228f526306d3fd"

  url "https://software-releases.graphicalanalysis.com/sa/mac/release/Vernier-Spectral-Analysis-#{version}.dmg",
      verified: "software-releases.graphicalanalysis.com/"
  name "Vernier Spectral Analysis"
  desc "Spectrometer data analysis tool"
  homepage "https://www.vernier.com/product/spectral-analysis/"

  livecheck do
    url "https://software-releases.graphicalanalysis.com/sa/mac/release/release-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Vernier Spectral Analysis.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/vernier.spectralanalysis.sfl*",
    "~/Library/Application Support/Vernier Spectral Analysis",
    "~/Library/Logs/Vernier Spectral Analysis",
    "~/Library/Preferences/Vernier.SpectralAnalysis.plist",
    "~/Library/Saved Application State/Vernier.SpectralAnalysis.savedState",
  ]
end
