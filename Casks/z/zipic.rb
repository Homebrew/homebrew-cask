cask "zipic" do
  version "1.8.0"
  sha256 "31f7f797ce44bfe654251b4fd0f307361379ae6d944687f3f045f7d5b69bdaf7"

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
