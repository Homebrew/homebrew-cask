cask "whisky" do
  version "2.0.0"
  sha256 "af0a385be2903066153803f4c0541009a19679b155b65d91dd43a658297cb35d"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip"
  name "Whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://github.com/IsaacMarovitz/Whisky"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

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
