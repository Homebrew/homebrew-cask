cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.3.2"
  sha256 arm:   "fc47ac0b3a34cf9373e3e2e9cc43ea7b59b3101754e4992c0811cff49c950b14",
         intel: "23c2fbef5201971e908dbb3e1a10d102d165ab5af945042751b1ae962078953e"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/#{version}/WLJS.Notebook-#{version}#{arch}.dmg"
  name "WLJS Notebook"
  desc "Javascript frontend for Wolfram Engine"
  homepage "https://github.com/JerryI/wolfram-js-frontend"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "WLJS Notebook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/wljs-notebook.sfl*",
    "~/Library/Application Support/wljs-notebook",
    "~/Library/Preferences/wljs-notebook.plist",
    "~/Library/Saved Application State/wljs-notebook.savedState",
  ]
end
