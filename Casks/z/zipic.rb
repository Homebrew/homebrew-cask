cask "zipic" do
  version "1.10.7"
  sha256 "d37c39ea1e1eb404e081797eb4459769512e377cd463f383bd37e83ecd1b2cf1"

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
