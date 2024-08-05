cask "zipic" do
  version "1.6.4"
  sha256 "9d999655ebac3f96626dcf0818db77676d263e5cde7458f62bfdfecf1b3a470d"

  url "https://zipic.5km.tech/Zipic%20#{version}.dmg"
  name "Zipic"
  desc "Image compression tool"
  homepage "https://zipic.5km.tech/"

  livecheck do
    url "https://zipic.5km.tech/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Zipic.app"

  zap trash: [
    "~/Library/Preferences/studio.5km.zipic.plist",
    "~/Library/Saved Application State/studio.5km.zipic.savedState",
  ]
end
