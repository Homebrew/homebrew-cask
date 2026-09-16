cask "zipic" do
  version "1.10.1"
  sha256 "4f80cf34bb8efeb5b10047e3af24605e9c1ae28a921e33e95e651be243f11e49"

  url "https://releases.5km.tech/zipic/Zipic%20#{version}.dmg"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.app/"

  livecheck do
    url "https://releases.5km.tech/zipic/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Zipic.app"

  zap trash: [
    "~/Library/Application Support/zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end
