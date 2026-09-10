cask "wsl-manager" do
  version "2.0.3"
  sha256 "0b8713c328ac7cc3311334bd1f41651a679aee98f736ff3f0eac95beb973e82d"

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
