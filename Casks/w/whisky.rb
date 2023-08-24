cask "whisky" do
  version "1.1.1"
  sha256 "700bbad1246c87c63bb4e5b400f0e8cbf103aca152f23d017098f990ab09f25e"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip"
  name "Whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://github.com/IsaacMarovitz/Whisky"

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
