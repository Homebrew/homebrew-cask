cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.4.4"
  sha256 arm:   "7003a726ccd35b9c9c6bf0f8c321161ff6cbdcc63bed7ecccf001f4103c1eaa9",
         intel: "cfefb7016e1e1a81e073f0e6d04aeef622593cc70fcb5403462ef7fc54dbc920"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :big_sur"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
