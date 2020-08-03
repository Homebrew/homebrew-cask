cask "timing" do
  version "2020.8"
  sha256 "7675d0a6a470c123407df1ee21ec64a95779b55ecb7cfdb2d643dfd6cfee373c"

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  appcast "https://timingapp.com/updates/timing2.xml"
  name "Timing"
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
