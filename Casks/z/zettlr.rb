cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "4.3.0"
  sha256 arm:   "ea5cd59bc37bf68ea2233ba6fb409f2e4a97b5e4c89197ce537e87c8a42b14e4",
         intel: "563bc2bbf0dcb0ca290ee640445d4c182438c37878d1c2199f4d7b619643d9d3"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg",
      verified: "github.com/Zettlr/Zettlr/"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  depends_on macos: ">= :monterey"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
