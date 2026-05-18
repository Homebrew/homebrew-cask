cask "zipic" do
  version "1.9.6"
  sha256 "a254fe279fc208b3d3f3f3e55ad22d861db6ffd1746cafdd0a273e37dd6756a1"

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
  depends_on macos: :ventura

  app "Zipic.app"

  zap trash: [
    "~/Library/Application Support/zipic",
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
    "~/Library/zipic",
  ]
end
