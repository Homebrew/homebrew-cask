cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.1.0"
  sha256 arm:   "2837c011b2157d321a015ae64e8b3d0dcbfa4cc65f6d411038d12472753ac906",
         intel: "d8e98aa47d7a6b1b31b8a3f35accdfdca5c03db6ccc215e24c6494cfd3e91eb3"

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
