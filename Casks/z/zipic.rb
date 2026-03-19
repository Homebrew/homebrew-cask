cask "zipic" do
  version "1.9.0"
  sha256 "dad5f87d79f3a5e8454ddb6e8f317948ced0282c4c0aeeb0a8d5b868bfcae014"

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
