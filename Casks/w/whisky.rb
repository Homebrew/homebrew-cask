cask "whisky" do
  version "2.2.0"
  sha256 "473276c0275b9e52d35d793229317fcd52adae9f8ae68087869959a5780f52e4"

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
