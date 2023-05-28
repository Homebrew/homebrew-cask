cask "tea" do
  arch arm: "-arm64"

  version "0.2.20"
  sha256 arm:   "eb3d8adc8c69470ed2f9c32318d5ae76f627d0637ad5c49d8ba0f2238f09754f",
         intel: "9a49bd3fffd4e2e5cf157e4315a858174d65322f1077c610d6885a04b662c468"

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
