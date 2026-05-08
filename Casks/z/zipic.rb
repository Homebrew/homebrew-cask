cask "zipic" do
  version "1.9.5"
  sha256 "3ade66b76994aaed4c910b4b30cc6a5b106c9b4ef86949d086e058d2ecbf0817"

  url "https://releases.5km.tech/zipic/Zipic%20#{version}.dmg",
      verified: "releases.5km.tech/"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.app/"

  livecheck do
    url "https://releases.5km.tech/zipic/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Zipic.app"

  zap trash: [
    "~/Library/Application Support/zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end
