cask "wsl-manager" do
  version "2.3.0"
  sha256 "9b20f18ad55f8d68b52e0c6ef50c6be8099e1193492e1c33ba5df928f5084459"

  url "https://github.com/bostrot/wsl2-distro-manager/releases/download/v#{version}/wsl2-distro-manager-v#{version}-macos.dmg"
  name "WSL Manager"
  desc "Manage native Linux VMs and remote WSL distros"
  homepage "https://wslmanager.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "WSL Manager.app"

  uninstall quit: "com.bostrot.wsl2distromanager"

  zap trash: [
    "~/Library/Application Support/WSLManager",
    "~/Library/Preferences/com.bostrot.wsl2distromanager.plist",
    "~/Library/Saved Application State/com.bostrot.wsl2distromanager.savedState",
  ]
end
