cask "whisky" do
  version "2.3.0"
  sha256 "dc10c26f39ba4fb2b51bcc5998649e8d5da17497b0a8c39e8292cdb3ebd2bdad"

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
