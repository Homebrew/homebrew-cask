cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.4.2"
  sha256 arm:   "42f981b906cc317928e1c8020e219e2525841db9c857504d5406ce4000cc1f62",
         intel: "b636380ac88194e3365f07d549b016a1cacb903bfcdf805244884a377e539bf2"

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
