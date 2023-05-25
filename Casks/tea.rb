cask "tea" do
  arch arm: "-arm64"

  version "0.2.16"
  sha256 arm:   "dcd65ced5f042b208178e6975b6c64d7792bc7875c6a4c26c2a16d1a364c76f6",
         intel: "9138d325f68b7400cb60c98aacd908b573379d9cf98981e10f9ace195ddfbd5c"

  url "https://gui.tea.xyz/release/tea-#{version}#{arch}-mac.zip"
  name "tea"
  desc "Unified package manager"
  homepage "https://tea.xyz/gui/"

  livecheck do
    url "https://gui.tea.xyz/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "tea.app"

  zap trash: [
    "~/.tea", # Also used by CLI
    "~/Library/Application Support/tea",
    "~/Library/Caches/xyz.tea.gui",
    "~/Library/Caches/xyz.tea.gui.ShipIt",
    "~/Library/Logs/tea",
    "~/Library/Preferences/xyz.tea.gui.plist",
    "~/Library/Saved Application State/xyz.tea.gui.savedState",
  ]
end
