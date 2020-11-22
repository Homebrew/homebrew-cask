cask "timing" do
  version "2020.12"
  sha256 "756d422855e4dbddeef5353ff6af6a6de57a87d2a978261887052c7bc938929a"

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  appcast "https://timingapp.com/updates/timing2.xml"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  auto_updates true

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
