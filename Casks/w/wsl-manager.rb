cask "wsl-manager" do
  version "2.6.0"
  sha256 "ab4f97f0f2eb167c963fead80ec6a2a0ff23e022079b63c6c2930f1163277340"

  url "https://github.com/bostrot/wsl2-distro-manager/releases/download/v#{version}/wsl2-distro-manager-v#{version}-macos.dmg"
  name "WSL Manager"
  desc "Manage native Linux VMs and remote WSL distros"
  homepage "https://wslmanager.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "WSL Manager.app"

  uninstall quit: "com.bostrot.wsl2distromanager"

  zap trash: [
    "~/Library/Application Support/WSLManager",
    "~/Library/Preferences/com.bostrot.wsl2distromanager.plist",
    "~/Library/Saved Application State/com.bostrot.wsl2distromanager.savedState",
  ]
end
