cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "e621c9ba6f1380ebd8a394ba6beeed94050d547b83ace921fe2290eff86c0cbd",
         intel: "dfc7bf780d3fd23f8acf63c8e39394c15941ff671ec47d61eafcea2713233cb6"

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
