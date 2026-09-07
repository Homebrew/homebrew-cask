cask "wsl-manager" do
  version "2.0.1"
  sha256 "d1f1c474c8b9f92fab2e0799ff9a597bdc7cbfc56b0decc8db484a401b7bc65c"

  url "https://github.com/bostrot/wsl2-distro-manager/releases/download/v#{version}/wsl2-distro-manager-v#{version}-macos.dmg"
  name "WSL Manager"
  desc "Manage native Linux VMs and remote WSL distros, with AI assistant and MCP server"
  homepage "https://wslmanager.com/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "WSL Manager.app"

  uninstall quit: "com.bostrot.wsl2distromanager"

  zap trash: [
    "~/Library/Application Support/WSLManager",
    "~/Library/Preferences/com.bostrot.wsl2distromanager.plist",
    "~/Library/Saved Application State/com.bostrot.wsl2distromanager.savedState",
  ]
end
