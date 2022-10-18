cask "timing" do
  version "2022.5,345"
  sha256 "0dc0a7eabcf20757757ec24ae174825aee3657a30c483e002cec35a51dd50644"

  url "https://updates.timingapp.com/download/Timing-#{version.csv.first}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  livecheck do
    url "https://updates.timingapp.com/updates/timing2.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
