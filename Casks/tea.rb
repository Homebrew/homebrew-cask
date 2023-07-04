cask "tea" do
  arch arm: "-arm64"

  version "0.2.34"
  sha256 arm:   "c87fc2554db633eef5c33e9ac682ee31b52d22585d6c7840f6bd52d4a41b2363",
         intel: "f53c0988969ae95b422e8801409f437636df149a0e1bbe1586e74e9ed540bb15"

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
