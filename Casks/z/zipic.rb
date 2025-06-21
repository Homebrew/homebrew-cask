cask "zipic" do
  version "1.7.3"
  sha256 "ddc649efcddc99bea10fc8a920331b0415011a0aa83e2337e40b2c105080d1d9"

  url "https://zipic.5km.tech/Zipic%20#{version}.dmg"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.5km.tech/"

  livecheck do
    url "https://zipic.5km.tech/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Zipic.app"

  zap trash: [
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
  ]
end
