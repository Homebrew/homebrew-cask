cask "whisky" do
  # Pre-release is currently the only release available
  version "0.3.1"
  sha256 "323d1693752f96eaa971c6df2ca1f04ae456c361f4192ee332683066eac1097d"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/pre-#{version}/Whisky.zip"
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
    "~/Library/Application Support/Whisky",
    "~/Library/Containers/com.isaacmarovitz.Whisky",
    "~/Library/Logs/Whisky",
    "~/Library/Preferences/com.isaacmarovitz.Whisky.plist",
    "~/Library/Saved Application State/com.isaacmarovitz.Whisky.savedState",
  ]
end
