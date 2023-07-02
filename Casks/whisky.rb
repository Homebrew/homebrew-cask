cask "whisky" do
  version "1.0.0"
  sha256 "c483277cdc5dc6a679fb48652eaba0fba0e3f11b1d16fee7767b2c3238842a63"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip"
  name "whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://github.com/IsaacMarovitz/Whisky"

  livecheck do
    url :url
    strategy :git
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Whisky.app"

  zap trash: [
    "~/Library/Application Support/com.isaacmarovitz.Whisky",
    "~/Library/Containers/com.isaacmarovitz.Whisky",
    "~/Library/HTTPStorages/com.isaacmarovitz.Whisky",
    "~/Library/Logs/com.isaacmarovitz.Whisky",
    "~/Library/Preferences/com.isaacmarovitz.Whisky.plist",
    "~/Library/Saved Application State/com.isaacmarovitz.Whisky.savedState",
  ]
end
