cask "whisky" do
  version "2.3.2"
  sha256 "75136176947df9701c6387fdc3420f29ec0414e845304e2582b17f62dfeb805f"

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
    "~/Library/Application Scripts/com.isaacmarovitz.Whisky.WhiskyThumbnail",
    "~/Library/Application Support/com.isaacmarovitz.Whisky",
    "~/Library/Containers/com.isaacmarovitz.Whisky",
    "~/Library/Containers/com.isaacmarovitz.Whisky.WhiskyThumbnail",
    "~/Library/HTTPStorages/com.isaacmarovitz.Whisky",
    "~/Library/Logs/com.isaacmarovitz.Whisky",
    "~/Library/Preferences/com.isaacmarovitz.Whisky.plist",
    "~/Library/Saved Application State/com.isaacmarovitz.Whisky.savedState",
  ]
end
