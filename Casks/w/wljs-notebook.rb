cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.5.0"
  sha256 arm:   "41b191f3f7c2db1fa9612f74df3b2e6b6d5f67f2c3e0f381b0c2880b640d9c32",
         intel: "181e28d2a6c0604c009b5c802cb2ce1161c0d79c3666151b9fb37ffc6dc24fb2"

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
