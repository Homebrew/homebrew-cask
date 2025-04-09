cask "whisky" do
  version "2.3.5"
  sha256 "62fce6aa7034cc84e4809a35cb46af37e7932368102450dd2b3d4a18cbc7b94e"

  url "https://github.com/IsaacMarovitz/Whisky/releases/download/v#{version}/Whisky.zip",
      verified: "github.com/IsaacMarovitz/Whisky/"
  name "Whisky"
  desc "Wine wrapper built with SwiftUI"
  homepage "https://getwhisky.app/"

  # https://docs.getwhisky.app/maintenance-notice
  # As the cask is reasonably popular, disabling could be delayed beyond 12 months
  # from deprecation date, if it is still functional.
  deprecate! date: "2025-04-09", because: :unmaintained

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
