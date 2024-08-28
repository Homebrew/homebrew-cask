cask "wljs-notebook" do
  arch arm: "arm64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "4515cfa4b17f7b54361ebd45fb7093a7dbaaafa7ccb2b62a09cb42ecfee4f7f9",
         intel: "051956a302fb0a97fc3584f8c7bafc0679bfed8ab77c8c54ecb181723248aa25"

  url "https://github.com/JerryI/wolfram-js-frontend/releases/download/#{version}/wljs-notebook-#{version}-#{arch}.dmg"
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
