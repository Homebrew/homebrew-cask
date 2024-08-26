cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.5.0"
  sha256 arm:   "5375ac1a51993c205f153a6db71fea501636e062273980a699baf103ec9f6335",
         intel: "bc4d5fc284ce805b36043f2772274075cc48de75d1a5cfdc7d64b225d98bd355"

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
