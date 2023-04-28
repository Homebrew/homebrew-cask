cask "timing" do
  version "2023.3.1"
  sha256 "24709042c7ad374a45d898bdd73c5270433fb3a979494e8a0ad55223641ac5f0"

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  name "Timing"
  name "Timing 2"
  desc "Automatic time and productivity tracking app"
  homepage "https://timingapp.com/"

  livecheck do
    url "https://updates.timingapp.com/updates/timing2.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Timing.app"

  uninstall login_item: "TimingHelper"

  zap trash: [
    "~/Library/Application Support/info.eurocomp.Timing2",
    "~/Library/Application Support/info.eurocomp.TimingHelper",
    "~/Library/Application Support/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.Timing2",
    "~/Library/Caches/info.eurocomp.TimingHelper.InfoExtractorService",
    "~/Library/Caches/info.eurocomp.TimingHelper",
    "~/Library/Preferences/info.eurocomp.Timing2.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.InfoExtractorService.plist",
    "~/Library/Preferences/info.eurocomp.TimingHelper.plist",
  ]
end
