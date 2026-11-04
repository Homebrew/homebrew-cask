cask "zipic" do
  version "1.10.8"
  sha256 "7030638f1e0ef151513b6fcc634956496f01ac183183927d9542dc5305b3322c"

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
    "~/Library/Application Support/zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end
