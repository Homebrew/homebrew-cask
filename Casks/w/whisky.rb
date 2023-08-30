cask "whisky" do
  version "1.2.0"
  sha256 "9d53c40feca538d0a03554ada508ddbf85cc9fbdc832d5d55a8985be083fb701"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip"
  name "Whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://github.com/IsaacMarovitz/Whisky"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: "> :ventura"

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
