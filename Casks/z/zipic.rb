cask "zipic" do
  version "1.10.6"
  sha256 "e28c2397ca07a66b76fb92d485d776979b733bcf7c7d8000c76c4ec4923ee898"

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
