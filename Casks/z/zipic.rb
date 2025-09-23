cask "zipic" do
  version "1.8.1"
  sha256 "a0ae1c48c4acf336a3b5b2b71a75cf4c99e40bf65432b29d2c3671755ebd561f"

  url "https://zipic.5km.tech/Zipic%20#{version}.dmg"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.5km.tech/"

  livecheck do
    url "https://zipic.5km.tech/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Zipic.app"

  zap trash: [
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
  ]
end
