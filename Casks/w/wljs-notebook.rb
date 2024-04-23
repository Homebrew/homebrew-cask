cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.2.9"
  sha256 arm:   "2b1152aa715b9be885522c63c5ba60744ec3317ea8d5377354b7f869043d6f37",
         intel: "a93c1aad237357298662f87d27caa4d55f9b2decc04fe4fa9007fdb15bcebcf6"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/#{version}/WLJS.Notebook-#{version}#{arch}.dmg"
  name "wljs-notebook"
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
