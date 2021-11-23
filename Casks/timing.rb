cask "timing" do
  version "2021.6.1,311"
  sha256 "42d52874ca5e074327cb198d32674cde8e0ef47b116bbe424a028d1147471460"

  url "https://updates.timingapp.com/download/Timing-#{version.before_comma}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  livecheck do
    url "https://updates.timingapp.com/updates/timing2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timing.app"

  uninstall login_item: "TimingHelper"

  zap trash: [
    "~/Library/Application Support/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Application Support/info.eurocomp.Timing2/",
    "~/Library/Application Support/info.eurocomp.TimingHelper/",
    "~/Library/Caches/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.Timing2/",
    "~/Library/Caches/info.eurocomp.TimingHelper/",
    "~/Library/Preferences/info.eurocomp.TimingHelper.InfoExtractorService.plist",
    "~/Library/Preferences/info.eurocomp.Timing2.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.plist",
  ]
end
