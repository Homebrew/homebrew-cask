cask "zipic" do
  version "1.10.10"
  sha256 "2697418cba1812668e0f0d61052738bdc2c3be2cf3a92d41c17b88e94b6139eb"

  url "https://releases.5km.tech/zipic/Zipic%20#{version}.dmg?r=2"
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
    "~/Library/Application Support/studio.5km.zipic",
    "~/Library/Application Support/zipic",
    "~/Library/Caches/studio.5km.zipic",
    "~/Library/HTTPStorages/studio.5km.zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end
