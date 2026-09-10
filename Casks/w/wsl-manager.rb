cask "wsl-manager" do
  version "2.0.4"
  sha256 "03b0479aff2e7acd5c0f507206bdbfca6e0af011d23e22f5b27a93b5a4d1c7f4"

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
