cask "zipic" do
  version "1.10.4"
  sha256 "18a30741a66d2a05a8e2604e6d3c3f9fa96a482c8606ca05155264d28947d0e5"

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
