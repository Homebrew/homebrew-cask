cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.3.7"
  sha256 arm:   "f99c3dc05375e5cb268dcc6deda22198a10289f6143466ca0a24b40e20b651bd",
         intel: "7ab624b47f39d26046331db1227f3de8610c16bfdd9208e5db516486eec814c1"

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
