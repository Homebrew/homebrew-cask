cask "zipic" do
  version "1.7.2"
  sha256 "d76cd1017e7314499ec43d163b6f8ff0f3422b6f3536aeb1c395ac774e5c9e50"

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
