cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.2.2"
  sha256 arm:   "68ef933b6a05faebbb36a9da5ebd4e1d66187902816cdf1301ab6b58c03e96be",
         intel: "cfd5665029ab208edcfdcecf45de78366a0c34b3a67451ba2dc2c7a164fa86b7"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :catalina"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
