cask "yep" do
  version "4.0.4"
  sha256 :no_check

  url "https://www.ironicsoftware.com/downloads/Yep.zip"
  name "Yep"
  desc "Document manager"
  homepage "https://www.ironicsoftware.com/yep/"

  livecheck do
    url "https://ironicsoftware.com/downloads/yep.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Yep.app"

  zap trash: [
    "~/Library/Application Support/com.ironic.yep#{version.major}",
    "~/Library/Application Support/Yep",
    "~/Library/Caches/com.ironic.yep#{version.major}",
    "~/Library/HTTPStorages/com.ironic.yep#{version.major}",
    "~/Library/Preferences/com.ironic.yep#{version.major}.plist",
    "~/Library/Saved Application State/com.ironic.yep#{version.major}.savedState",
  ]
end
