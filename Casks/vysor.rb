cask "vysor" do
  version "3.1.3"
  sha256 "b6626e8ad2324c6a1e40f52a87899708124c36d71e6132de28068b5989ed7ac8"

  # github.com/koush/vysor.io/ was verified as official when first introduced to the cask
  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip"
  appcast "https://github.com/koush/vysor.io/releases.atom"
  name "Vysor"
  homepage "https://www.vysor.io/"

  app "Vysor.app"

  zap trash: [
    "~/Library/Application Support/Vysor",
    "~/Library/Caches/com.electron.vysor",
    "~/Library/Caches/com.electron.vysor.ShipIt",
    "~/Library/Preferences/com.electron.vysor.plist",
    "~/Library/Preferences/com.electron.vysor.helper.plist",
    "~/Library/Saved Application State/com.electron.vysor.savedState",
  ]
end
