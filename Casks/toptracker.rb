cask "toptracker" do
  version "1.6.2.6524"
  sha256 "3b626f3a4761b6fd8678da4dfed5beabdf1ea198478a8a5f3a06585de56804b0"

  # d101nvfmxunqnl.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version}.dmg"
  appcast "https://tracker-api.toptal.com/desktop/updates/mac"
  name "TopTracker"
  homepage "https://tracker.toptal.com/tracker/"

  depends_on macos: ">= :sierra"

  app "TopTracker.app"
end
