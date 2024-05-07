cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.3.5"
  sha256 arm:   "05236a9d22f5bb4adac28461dd01f22ecc807055ab22866a831b681ddbf0338d",
         intel: "6ef01ab8a638e419c43abe32e50aed8c5ce6786b6d18a64bff8daf4021694623"

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
