cask "whisky" do
  version "2.3.1"
  sha256 "a8b398d576c8199ca0a8116e881b0ffcac6be1fb4b34d087f6ca69c57584371c"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip",
      verified: "github.com/IsaacMarovitz/Whisky/"
  name "Whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://getwhisky.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Whisky.app"
  binary "#{appdir}/Whisky.app/Contents/Resources/WhiskyCmd", target: "whisky"

  zap trash: [
    "~/Library/Application Support/com.isaacmarovitz.Whisky",
    "~/Library/Containers/com.isaacmarovitz.Whisky",
    "~/Library/HTTPStorages/com.isaacmarovitz.Whisky",
    "~/Library/Logs/com.isaacmarovitz.Whisky",
    "~/Library/Preferences/com.isaacmarovitz.Whisky.plist",
    "~/Library/Saved Application State/com.isaacmarovitz.Whisky.savedState",
  ]
end
