cask "windock" do
  version "1.0.20"
  sha256 "112c56112ba75a5906d05fe015624eae33696bb835aec89a1a8cccd069b11222"

  url "https://github.com/barnuri/win-dock/releases/download/v#{version}/WinDock.zip"
  name "WinDock"
  desc "Windows 11-style taskbar for macOS"
  homepage "https://github.com/barnuri/win-dock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "WinDock.app"

  uninstall quit: "barnuri.WinDock"

  zap trash: [
    "~/Library/Application Support/WinDock",
    "~/Library/Caches/barnuri.WinDock",
    "~/Library/Preferences/barnuri.WinDock.plist",
    "~/Library/Saved Application State/barnuri.WinDock.savedState",
    "~/Library/HTTPStorages/barnuri.WinDock",
    "~/Library/WebKit/barnuri.WinDock",
  ]
end
