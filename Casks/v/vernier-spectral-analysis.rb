cask "vernier-spectral-analysis" do
  version "5.1.0-2993"
  sha256 "afd7f5c5b62b4c989b08c0166af2f652c2843592dbd2c48386bef317872da554"

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
  depends_on macos: ">= :monterey"

  app "Vernier Spectral Analysis.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/vernier.spectralanalysis.sfl*",
    "~/Library/Application Support/Vernier Spectral Analysis",
    "~/Library/Logs/Vernier Spectral Analysis",
    "~/Library/Preferences/Vernier.SpectralAnalysis.plist",
    "~/Library/Saved Application State/Vernier.SpectralAnalysis.savedState",
  ]
end
