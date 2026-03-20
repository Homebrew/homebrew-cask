cask "zipic" do
  version "1.9.1"
  sha256 "4e2f339e89711588d797d8c22a8a4078c8983f7b7e72d82cb2a61ce331acd80e"

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
