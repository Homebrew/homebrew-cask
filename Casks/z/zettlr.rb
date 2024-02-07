cask "zettlr" do
  arch arm: "arm64", intel: "x64"

  version "3.0.5"
  sha256 arm:   "b94090ac66458b8dd08ed0805c1d14e7d9bdf9fd337be2a86ce8ad793cfb00cd",
         intel: "7f29702fcf0f0c458e0c6bcf00e88c712d9c5f85d2b9883dd9c7f5aed29c651b"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  depends_on macos: ">= :high_sierra"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.zettlr.app.sfl*",
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
