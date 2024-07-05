cask "wljs-notebook" do
  arch arm: "-arm64"

  version "2.4.5"
  sha256 arm:   "04f4a9926395916d7278e8284ec27b930b278092d3bb018c4676dfc8546bfa9b",
         intel: "fa1a7082b47e28606635f07253fb52f179109c7f3c6433b15b4f8b60c4b116ce"

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
