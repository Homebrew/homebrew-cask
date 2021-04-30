cask "timing" do
  version "2021.3.2,287"
  sha256 "c195d02d937f302609cd0a277dcd1ace7cab3cacbd1a700b4483ec94d02e3285"

  url "https://updates.timingapp.com/download/Timing-#{version.before_comma}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  livecheck do
    url "https://timingapp.com/updates/timing2.xml"
    strategy :sparkle
  end

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
